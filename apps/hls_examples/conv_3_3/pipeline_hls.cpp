#include <iostream>
#include <math.h>
#include <float.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>

extern "C" {
int64_t halide_current_time_ns(void *ctx);
void halide_profiler_pipeline_end(void *, void *);
}

#ifdef _WIN32
float roundf(float);
double round(double);
#else
inline float asinh_f32(float x) {return asinhf(x);}
inline float acosh_f32(float x) {return acoshf(x);}
inline float atanh_f32(float x) {return atanhf(x);}
inline double asinh_f64(double x) {return asinh(x);}
inline double acosh_f64(double x) {return acosh(x);}
inline double atanh_f64(double x) {return atanh(x);}
#endif
inline float sqrt_f32(float x) {return sqrtf(x);}
inline float sin_f32(float x) {return sinf(x);}
inline float asin_f32(float x) {return asinf(x);}
inline float cos_f32(float x) {return cosf(x);}
inline float acos_f32(float x) {return acosf(x);}
inline float tan_f32(float x) {return tanf(x);}
inline float atan_f32(float x) {return atanf(x);}
inline float sinh_f32(float x) {return sinhf(x);}
inline float cosh_f32(float x) {return coshf(x);}
inline float tanh_f32(float x) {return tanhf(x);}
inline float hypot_f32(float x, float y) {return hypotf(x, y);}
inline float exp_f32(float x) {return expf(x);}
inline float log_f32(float x) {return logf(x);}
inline float pow_f32(float x, float y) {return powf(x, y);}
inline float floor_f32(float x) {return floorf(x);}
inline float ceil_f32(float x) {return ceilf(x);}
inline float round_f32(float x) {return roundf(x);}

inline double sqrt_f64(double x) {return sqrt(x);}
inline double sin_f64(double x) {return sin(x);}
inline double asin_f64(double x) {return asin(x);}
inline double cos_f64(double x) {return cos(x);}
inline double acos_f64(double x) {return acos(x);}
inline double tan_f64(double x) {return tan(x);}
inline double atan_f64(double x) {return atan(x);}
inline double sinh_f64(double x) {return sinh(x);}
inline double cosh_f64(double x) {return cosh(x);}
inline double tanh_f64(double x) {return tanh(x);}
inline double hypot_f64(double x, double y) {return hypot(x, y);}
inline double exp_f64(double x) {return exp(x);}
inline double log_f64(double x) {return log(x);}
inline double pow_f64(double x, double y) {return pow(x, y);}
inline double floor_f64(double x) {return floor(x);}
inline double ceil_f64(double x) {return ceil(x);}
inline double round_f64(double x) {return round(x);}

inline float nan_f32() {return NAN;}
inline float neg_inf_f32() {return -INFINITY;}
inline float inf_f32() {return INFINITY;}
inline bool is_nan_f32(float x) {return x != x;}
inline bool is_nan_f64(double x) {return x != x;}
template<typename A, typename B> 
A reinterpret(const B &b) { 
    #if __cplusplus >= 201103L
    static_assert(sizeof(A) == sizeof(B), "type size mismatch");
    #endif
    A a; 
    memcpy(&a, &b, sizeof(a)); 
    return a;
}
inline float float_from_bits(uint32_t bits) {return reinterpret<float, uint32_t>(bits);}

template<typename T> 
inline T max(const T &a, const T &b) {return (a > b) ? a : b;}

template<typename T> 
inline T min(const T &a, const T &b) {return (a < b) ? a : b;}

template<typename A, typename B>
const B &return_second(const A &a, const B &b) {
    (void) a;
    return b;
}

namespace {
class HalideFreeHelper {
    typedef void (*FreeFunction)(void *user_context, void *p);
    void * user_context;
    void *p;
    FreeFunction free_function;
public:
    HalideFreeHelper(void *user_context, void *p, FreeFunction free_function)
        : user_context(user_context), p(p), free_function(free_function) {}
    ~HalideFreeHelper() { free(); }
    void free() {
        if (p) {
            // TOOD: do all free_functions guarantee to ignore a null ptr?
            free_function(user_context, p);
            p = nullptr;
        }
    }
};
} // namespace

#ifndef HALIDE_HALIDERUNTIME_H
#define HALIDE_HALIDERUNTIME_H

#ifndef COMPILING_HALIDE_RUNTIME
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#else
#include "runtime_internal.h"
#endif

#ifdef __cplusplus
// Forward declare type to allow naming typed handles.
// See Type.h for documentation.
template<typename T> struct halide_handle_traits;
#endif

#ifdef __cplusplus
extern "C" {
#endif

// Note that you should not use "inline" along with HALIDE_ALWAYS_INLINE;
// it is not necessary, and may produce warnings for some build configurations.
#ifdef _MSC_VER
#define HALIDE_ALWAYS_INLINE __forceinline
#else
#define HALIDE_ALWAYS_INLINE __attribute__((always_inline)) inline
#endif

/** \file
 *
 * This file declares the routines used by Halide internally in its
 * runtime. On platforms that support weak linking, these can be
 * replaced with user-defined versions by defining an extern "C"
 * function with the same name and signature.
 *
 * When doing Just In Time (JIT) compilation methods on the Func being
 * compiled must be called instead. The corresponding methods are
 * documented below.
 *
 * All of these functions take a "void *user_context" parameter as their
 * first argument; if the Halide kernel that calls back to any of these
 * functions has been compiled with the UserContext feature set on its Target,
 * then the value of that pointer passed from the code that calls the
 * Halide kernel is piped through to the function.
 *
 * Some of these are also useful to call when using the default
 * implementation. E.g. halide_shutdown_thread_pool.
 *
 * Note that even on platforms with weak linking, some linker setups
 * may not respect the override you provide. E.g. if the override is
 * in a shared library and the halide object files are linked directly
 * into the output, the builtin versions of the runtime functions will
 * be called. See your linker documentation for more details. On
 * Linux, LD_DYNAMIC_WEAK=1 may help.
 *
 */

// Forward-declare to suppress warnings if compiling as C.
struct halide_buffer_t;
struct buffer_t;

/** Print a message to stderr. Main use is to support tracing
 * functionality, print, and print_when calls. Also called by the default
 * halide_error.  This function can be replaced in JITed code by using
 * halide_custom_print and providing an implementation of halide_print
 * in AOT code. See Func::set_custom_print.
 */
// @{
extern void halide_print(void *user_context, const char *);
extern void halide_default_print(void *user_context, const char *);
typedef void (*halide_print_t)(void *, const char *);
extern halide_print_t halide_set_custom_print(halide_print_t print);
// @}

/** Halide calls this function on runtime errors (for example bounds
 * checking failures). This function can be replaced in JITed code by
 * using Func::set_error_handler, or in AOT code by calling
 * halide_set_error_handler. In AOT code on platforms that support
 * weak linking (i.e. not Windows), you can also override it by simply
 * defining your own halide_error.
 */
// @{
extern void halide_error(void *user_context, const char *);
extern void halide_default_error(void *user_context, const char *);
typedef void (*halide_error_handler_t)(void *, const char *);
extern halide_error_handler_t halide_set_error_handler(halide_error_handler_t handler);
// @}

/** Cross-platform mutex. These are allocated statically inside the
 * runtime, hence the fixed size. They must be initialized with
 * zero. The first time halide_mutex_lock is called, the lock must be
 * initialized in a thread safe manner. This incurs a small overhead
 * for a once mechanism, but makes the lock reliably easy to setup and
 * use without depending on e.g. C++ constructor logic.
 */
struct halide_mutex {
    uint64_t _private[8];
};

/** A basic set of mutex and condition variable functions, which call
 * platform specific code for mutual exclusion. Equivalent to posix
 * calls. Mutexes should initially be set to zero'd memory. Any
 * resources required are created on first lock. Calling destroy
 * re-zeros the memory.
 */
//@{
extern void halide_mutex_lock(struct halide_mutex *mutex);
extern void halide_mutex_unlock(struct halide_mutex *mutex);
extern void halide_mutex_destroy(struct halide_mutex *mutex);
//@}

/** Define halide_do_par_for to replace the default thread pool
 * implementation. halide_shutdown_thread_pool can also be called to
 * release resources used by the default thread pool on platforms
 * where it makes sense. (E.g. On Mac OS, Grand Central Dispatch is
 * used so %Halide does not own the threads backing the pool and they
 * cannot be released.)  See Func::set_custom_do_task and
 * Func::set_custom_do_par_for. Should return zero if all the jobs
 * return zero, or an arbitrarily chosen return value from one of the
 * jobs otherwise.
 */
//@{
typedef int (*halide_task_t)(void *user_context, int task_number, uint8_t *closure);
extern int halide_do_par_for(void *user_context,
                             halide_task_t task,
                             int min, int size, uint8_t *closure);
extern void halide_shutdown_thread_pool();
//@}

/** Set a custom method for performing a parallel for loop. Returns
 * the old do_par_for handler. */
typedef int (*halide_do_par_for_t)(void *, halide_task_t, int, int, uint8_t*);
extern halide_do_par_for_t halide_set_custom_do_par_for(halide_do_par_for_t do_par_for);

/** If you use the default do_par_for, you can still set a custom
 * handler to perform each individual task. Returns the old handler. */
//@{
typedef int (*halide_do_task_t)(void *, halide_task_t, int, uint8_t *);
extern halide_do_task_t halide_set_custom_do_task(halide_do_task_t do_task);
extern int halide_do_task(void *user_context, halide_task_t f, int idx,
                          uint8_t *closure);
//@}

/** The default versions of do_task and do_par_for. Can be convenient
 * to call from overrides in certain circumstances. */
// @{
extern int halide_default_do_par_for(void *user_context,
                                     halide_task_t task,
                                     int min, int size, uint8_t *closure);
extern int halide_default_do_task(void *user_context, halide_task_t f, int idx,
                                  uint8_t *closure);
// @}

struct halide_thread;

/** Spawn a thread. Returns a handle to the thread for the purposes of
 * joining it. The thread must be joined in order to clean up any
 * resources associated with it. */
extern struct halide_thread *halide_spawn_thread(void (*f)(void *), void *closure);

/** Join a thread. */
extern void halide_join_thread(struct halide_thread *);

/** Set the number of threads used by Halide's thread pool. Returns
 * the old number.
 *
 * n < 0  : error condition
 * n == 0 : use a reasonable system default (typically, number of cpus online).
 * n == 1 : use exactly one thread; this will always enforce serial execution
 * n > 1  : use a pool of exactly n threads.
 *
 * Note that the default iOS and OSX behavior will treat n > 1 like n == 0;
 * that is, any positive value other than 1 will use a system-determined number
 * of threads.
 *
 * (Note that this is only guaranteed when using the default implementations
 * of halide_do_par_for(); custom implementations may completely ignore values
 * passed to halide_set_num_threads().)
 */
extern int halide_set_num_threads(int n);

/** Halide calls these functions to allocate and free memory. To
 * replace in AOT code, use the halide_set_custom_malloc and
 * halide_set_custom_free, or (on platforms that support weak
 * linking), simply define these functions yourself. In JIT-compiled
 * code use Func::set_custom_allocator.
 *
 * If you override them, and find yourself wanting to call the default
 * implementation from within your override, use
 * halide_default_malloc/free.
 *
 * Note that halide_malloc must return a pointer aligned to the
 * maximum meaningful alignment for the platform for the purpose of
 * vector loads and stores. The default implementation uses 32-byte
 * alignment, which is safe for arm and x86. Additionally, it must be
 * safe to read at least 8 bytes before the start and beyond the
 * end.
 */
//@{
extern void *halide_malloc(void *user_context, size_t x);
extern void halide_free(void *user_context, void *ptr);
extern void *halide_default_malloc(void *user_context, size_t x);
extern void halide_default_free(void *user_context, void *ptr);
typedef void *(*halide_malloc_t)(void *, size_t);
typedef void (*halide_free_t)(void *, void *);
extern halide_malloc_t halide_set_custom_malloc(halide_malloc_t user_malloc);
extern halide_free_t halide_set_custom_free(halide_free_t user_free);
//@}

/** Halide calls these functions to interact with the underlying
 * system runtime functions. To replace in AOT code on platforms that
 * support weak linking, define these functions yourself, or use
 * the halide_set_custom_load_library() and halide_set_custom_get_library_symbol()
 * functions. In JIT-compiled code, use JITSharedRuntime::set_default_handlers().
 *
 * halide_load_library and halide_get_library_symbol are equivalent to
 * dlopen and dlsym. halide_get_symbol(sym) is equivalent to
 * dlsym(RTLD_DEFAULT, sym).
 */
//@{
extern void *halide_get_symbol(const char *name);
extern void *halide_load_library(const char *name);
extern void *halide_get_library_symbol(void *lib, const char *name);
extern void *halide_default_get_symbol(const char *name);
extern void *halide_default_load_library(const char *name);
extern void *halide_default_get_library_symbol(void *lib, const char *name);
typedef void *(*halide_get_symbol_t)(const char *name);
typedef void *(*halide_load_library_t)(const char *name);
typedef void *(*halide_get_library_symbol_t)(void *lib, const char *name);
extern halide_get_symbol_t halide_set_custom_get_symbol(halide_get_symbol_t user_get_symbol);
extern halide_load_library_t halide_set_custom_load_library(halide_load_library_t user_load_library);
extern halide_get_library_symbol_t halide_set_custom_get_library_symbol(halide_get_library_symbol_t user_get_library_symbol);
//@}

/** Called when debug_to_file is used inside %Halide code.  See
 * Func::debug_to_file for how this is called
 *
 * Cannot be replaced in JITted code at present.
 */
extern int32_t halide_debug_to_file(void *user_context, const char *filename,
                                    int32_t type_code,
                                    struct halide_buffer_t *buf);

/** Types in the halide type system. They can be ints, unsigned ints,
 * or floats (of various bit-widths), or a handle (which is always 64-bits).
 * Note that the int/uint/float values do not imply a specific bit width
 * (the bit width is expected to be encoded in a separate value).
 */
typedef enum halide_type_code_t
#if __cplusplus >= 201103L
: uint8_t
#endif
{
    halide_type_int = 0,   //!< signed integers
    halide_type_uint = 1,  //!< unsigned integers
    halide_type_float = 2, //!< floating point numbers
    halide_type_handle = 3 //!< opaque pointer type (void *)
} halide_type_code_t;

// Note that while __attribute__ can go before or after the declaration,
// __declspec apparently is only allowed before.
#ifndef HALIDE_ATTRIBUTE_ALIGN
    #ifdef _MSC_VER
        #define HALIDE_ATTRIBUTE_ALIGN(x) __declspec(align(x))
    #else
        #define HALIDE_ATTRIBUTE_ALIGN(x) __attribute__((aligned(x)))
    #endif
#endif

/** A runtime tag for a type in the halide type system. Can be ints,
 * unsigned ints, or floats of various bit-widths (the 'bits'
 * field). Can also be vectors of the same (by setting the 'lanes'
 * field to something larger than one). This struct should be
 * exactly 32-bits in size. */
struct halide_type_t {
    /** The basic type code: signed integer, unsigned integer, or floating point. */
#if __cplusplus >= 201103L
    HALIDE_ATTRIBUTE_ALIGN(1) halide_type_code_t code; // halide_type_code_t
#else
    HALIDE_ATTRIBUTE_ALIGN(1) uint8_t code; // halide_type_code_t
#endif

    /** The number of bits of precision of a single scalar value of this type. */
    HALIDE_ATTRIBUTE_ALIGN(1) uint8_t bits;

    /** How many elements in a vector. This is 1 for scalar types. */
    HALIDE_ATTRIBUTE_ALIGN(2) uint16_t lanes;

#ifdef __cplusplus
    /** Construct a runtime representation of a Halide type from:
     * code: The fundamental type from an enum.
     * bits: The bit size of one element.
     * lanes: The number of vector elements in the type. */
    HALIDE_ALWAYS_INLINE halide_type_t(halide_type_code_t code, uint8_t bits, uint16_t lanes = 1)
        : code(code), bits(bits), lanes(lanes) {
    }

    /** Default constructor is required e.g. to declare halide_trace_event
     * instances. */
    HALIDE_ALWAYS_INLINE halide_type_t() : code((halide_type_code_t)0), bits(0), lanes(0) {}

    /** Compare two types for equality. */
    HALIDE_ALWAYS_INLINE bool operator==(const halide_type_t &other) const {
        return (code == other.code &&
                bits == other.bits &&
                lanes == other.lanes);
    }

    HALIDE_ALWAYS_INLINE bool operator!=(const halide_type_t &other) const {
        return !(*this == other);
    }

    /** Size in bytes for a single element, even if width is not 1, of this type. */
    HALIDE_ALWAYS_INLINE int bytes() const { return (bits + 7) / 8; }
#endif
};

enum halide_trace_event_code_t {halide_trace_load = 0,
                                halide_trace_store = 1,
                                halide_trace_begin_realization = 2,
                                halide_trace_end_realization = 3,
                                halide_trace_produce = 4,
                                halide_trace_end_produce = 5,
                                halide_trace_consume = 6,
                                halide_trace_end_consume = 7,
                                halide_trace_begin_pipeline = 8,
                                halide_trace_end_pipeline = 9};

struct halide_trace_event_t {
    /** The name of the Func or Pipeline that this event refers to */
    const char *func;

    /** If the event type is a load or a store, this points to the
     * value being loaded or stored. Use the type field to safely cast
     * this to a concrete pointer type and retrieve it. For other
     * events this is null. */
    void *value;

    /** For loads and stores, an array which contains the location
     * being accessed. For vector loads or stores it is an array of
     * vectors of coordinates (the vector dimension is innermost).
     *
     * For realization or production-related events, this will contain
     * the mins and extents of the region being accessed, in the order
     * min0, extent0, min1, extent1, ...
     *
     * For pipeline-related events, this will be null.
     */
    int32_t *coordinates;

    /** If the event type is a load or a store, this is the type of
     * the data. Otherwise, the value is meaningless. */
    struct halide_type_t type;

    /** The type of event */
    enum halide_trace_event_code_t event;

    /* The ID of the parent event (see below for an explanation of
     * event ancestry). */
    int32_t parent_id;

    /** If this was a load or store of a Tuple-valued Func, this is
     * which tuple element was accessed. */
    int32_t value_index;

    /** The length of the coordinates array */
    int32_t dimensions;

#ifdef __cplusplus
    // If we don't explicitly mark the default ctor as inline,
    // certain build configurations can fail (notably iOS)
    HALIDE_ALWAYS_INLINE halide_trace_event_t() {}
#endif
};

/** Called when Funcs are marked as trace_load, trace_store, or
 * trace_realization. See Func::set_custom_trace. The default
 * implementation either prints events via halide_print, or if
 * HL_TRACE_FILE is defined, dumps the trace to that file in a
 * sequence of trace packets. The header for a trace packet is defined
 * below. If the trace is going to be large, you may want to make the
 * file a named pipe, and then read from that pipe into gzip.
 *
 * halide_trace returns a unique ID which will be passed to future
 * events that "belong" to the earlier event as the parent id. The
 * ownership hierarchy looks like:
 *
 * begin_pipeline
 * +--begin_realization
 * |  +--produce
 * |  |  +--load/store
 * |  |  +--end_produce
 * |  +--consume
 * |  |  +--load
 * |  |  +--end_consume
 * |  +--end_realization
 * +--end_pipeline
 *
 * Threading means that ownership cannot be inferred from the ordering
 * of events. There can be many active realizations of a given
 * function, or many active productions for a single
 * realization. Within a single production, the ordering of events is
 * meaningful.
 */
// @}
extern int32_t halide_trace(void *user_context, const struct halide_trace_event_t *event);
extern int32_t halide_default_trace(void *user_context, const struct halide_trace_event_t *event);
typedef int32_t (*halide_trace_t)(void *user_context, const struct halide_trace_event_t *);
extern halide_trace_t halide_set_custom_trace(halide_trace_t trace);
// @}

/** The header of a packet in a binary trace. All fields are 32-bit. */
struct halide_trace_packet_t {
    /** The total size of this packet in bytes. Always a multiple of
     * four. Equivalently, the number of bytes until the next
     * packet. */
    uint32_t size;

    /** The id of this packet (for the purpose of parent_id). */
    int32_t id;

    /** The remaining fields are equivalent to those in halide_trace_event_t */
    // @{
    struct halide_type_t type;
    enum halide_trace_event_code_t event;
    int32_t parent_id;
    int32_t value_index;
    int32_t dimensions;
    // @}

    #ifdef __cplusplus
    // If we don't explicitly mark the default ctor as inline,
    // certain build configurations can fail (notably iOS)
    HALIDE_ALWAYS_INLINE halide_trace_packet_t() {}

    /** Get the coordinates array, assuming this packet is laid out in
     * memory as it was written. The coordinates array comes
     * immediately after the packet header. */
    HALIDE_ALWAYS_INLINE const int *coordinates() const {
        return (const int *)(this + 1);
    }

    /** Get the value, assuming this packet is laid out in memory as
     * it was written. The packet comes immediately after the coordinates
     * array. */
    HALIDE_ALWAYS_INLINE const void *value() const {
        return (const void *)(coordinates() + dimensions);
    }

    /** Get the func name, assuming this packet is laid out in memory
     * as it was written. It comes after the value. */
    HALIDE_ALWAYS_INLINE const char *func() const {
        return (const char *)value() + type.lanes * type.bytes();
    }
    #endif
};



/** Set the file descriptor that Halide should write binary trace
 * events to. If called with 0 as the argument, Halide outputs trace
 * information to stdout in a human-readable format. If never called,
 * Halide checks the for existence of an environment variable called
 * HL_TRACE_FILE and opens that file. If HL_TRACE_FILE is not defined,
 * it outputs trace information to stdout in a human-readable
 * format. */
extern void halide_set_trace_file(int fd);

/** Halide calls this to retrieve the file descriptor to write binary
 * trace events to. The default implementation returns the value set
 * by halide_set_trace_file. Implement it yourself if you wish to use
 * a custom file descriptor per user_context. Return zero from your
 * implementation to tell Halide to print human-readable trace
 * information to stdout. */
extern int halide_get_trace_file(void *user_context);

/** If tracing is writing to a file. This call closes that file
 * (flushing the trace). Returns zero on success. */
extern int halide_shutdown_trace();

/** All Halide GPU or device backend implementations much provide an interface
 * to be used with halide_device_malloc, etc.
 */
struct halide_device_interface_t;

/** Release all data associated with the current GPU backend, in particular
 * all resources (memory, texture, context handles) allocated by Halide. Must
 * be called explicitly when using AOT compilation. */
extern void halide_device_release(void *user_context, const struct halide_device_interface_t *device_interface);

/** Copy image data from device memory to host memory. This must be called
 * explicitly to copy back the results of a GPU-based filter. */
extern int halide_copy_to_host(void *user_context, struct halide_buffer_t *buf);

/** Copy image data from host memory to device memory. This should not
 * be called directly; Halide handles copying to the device
 * automatically.  If interface is NULL and the bug has a non-zero dev
 * field, the device associated with the dev handle will be
 * used. Otherwise if the dev field is 0 and interface is NULL, an
 * error is returned. */
extern int halide_copy_to_device(void *user_context, struct halide_buffer_t *buf,
                                 const struct halide_device_interface_t *device_interface);

/** Wait for current GPU operations to complete. Calling this explicitly
 * should rarely be necessary, except maybe for profiling. */
extern int halide_device_sync(void *user_context, struct halide_buffer_t *buf);

/** Allocate device memory to back a halide_buffer_t. */
extern int halide_device_malloc(void *user_context, struct halide_buffer_t *buf,
                                const struct halide_device_interface_t *device_interface);

/** Free device memory. */
extern int halide_device_free(void *user_context, struct halide_buffer_t *buf);

/** Get a pointer to halide_device_free if a Halide runtime has been
 * linked in. Returns null if it has not. This requires a different
 * mechanism on different platforms. */
typedef int (*halide_device_free_t)(void *, struct halide_buffer_t *);
#ifdef _MSC_VER
extern const __declspec(selectany) void *halide_dummy_device_free = NULL;
extern int halide_weak_device_free(void *user_context, struct halide_buffer_t *buf);
// The following pragma tells the windows linker to make
// halide_device_free_weak the same symbol as halide_dummy_device_free
// if it can't resolve halide_weak_device_free normally
#ifdef _WIN64
#pragma comment(linker, "/alternatename:halide_weak_device_free=halide_dummy_device_free")
#else
#pragma comment(linker, "/alternatename:_halide_weak_device_free=_halide_dummy_device_free")
#endif
inline halide_device_free_t halide_get_device_free_fn() {
    if ((const void **)(&halide_weak_device_free) == &halide_dummy_device_free) {
        return NULL;
    } else {
        return &halide_weak_device_free;
    }
};
#elif __MINGW32__
inline halide_device_free_t halide_get_device_free_fn() {
    // There is no workable mechanism for doing this that we know of on mingw.
    return &halide_device_free;
}
#else
extern __attribute__((weak)) int halide_weak_device_free(void *user_context, struct halide_buffer_t *buf);
inline halide_device_free_t halide_get_device_free_fn() {
    return &halide_weak_device_free;
}
#endif


/** Versions of the above functions that accept legacy buffer_t structs. */
// @{
extern int halide_copy_to_host_legacy(void *user_context, struct buffer_t *buf);
extern int halide_copy_to_device_legacy(void *user_context, struct buffer_t *buf,
                                 const struct halide_device_interface_t *device_interface);
extern int halide_device_sync_legacy(void *user_context, struct buffer_t *buf);
extern int halide_device_malloc_legacy(void *user_context, struct buffer_t *buf,
                                const struct halide_device_interface_t *device_interface);
extern int halide_device_free_legacy(void *user_context, struct buffer_t *buf);
// @}

/** Selects which gpu device to use. 0 is usually the display
 * device. If never called, Halide uses the environment variable
 * HL_GPU_DEVICE. If that variable is unset, Halide uses the last
 * device. Set this to -1 to use the last device. */
extern void halide_set_gpu_device(int n);

/** Halide calls this to get the desired halide gpu device
 * setting. Implement this yourself to use a different gpu device per
 * user_context. The default implementation returns the value set by
 * halide_set_gpu_device, or the environment variable
 * HL_GPU_DEVICE. */
extern int halide_get_gpu_device(void *user_context);

/** Set the soft maximum amount of memory, in bytes, that the LRU
 *  cache will use to memoize Func results.  This is not a strict
 *  maximum in that concurrency and simultaneous use of memoized
 *  reults larger than the cache size can both cause it to
 *  temporariliy be larger than the size specified here.
 */
extern void halide_memoization_cache_set_size(int64_t size);

/** Given a cache key for a memoized result, currently constructed
 *  from the Func name and top-level Func name plus the arguments of
 *  the computation, determine if the result is in the cache and
 *  return it if so. (The internals of the cache key should be
 *  considered opaque by this function.) If this routine returns true,
 *  it is a cache miss. Otherwise, it will return false and the
 *  buffers passed in will be filled, via copying, with memoized
 *  data. The last argument is a list if halide_buffer_t pointers which
 *  represents the outputs of the memoized Func. If the Func does not
 *  return a Tuple, there will only be one halide_buffer_t in the list. The
 *  tuple_count parameters determines the length of the list.
 *
 * The return values are:
 * -1: Signals an error.
 *  0: Success and cache hit.
 *  1: Success and cache miss.
 */
extern int halide_memoization_cache_lookup(void *user_context, const uint8_t *cache_key, int32_t size,
                                           struct halide_buffer_t *realized_bounds,
                                           int32_t tuple_count, struct halide_buffer_t **tuple_buffers);

/** Given a cache key for a memoized result, currently constructed
 *  from the Func name and top-level Func name plus the arguments of
 *  the computation, store the result in the cache for futre access by
 *  halide_memoization_cache_lookup. (The internals of the cache key
 *  should be considered opaque by this function.) Data is copied out
 *  from the inputs and inputs are unmodified. The last argument is a
 *  list if halide_buffer_t pointers which represents the outputs of the
 *  memoized Func. If the Func does not return a Tuple, there will
 *  only be one halide_buffer_t in the list. The tuple_count parameters
 *  determines the length of the list.
 *
 * If there is a memory allocation failure, the store does not store
 * the data into the cache.
 */
extern int halide_memoization_cache_store(void *user_context, const uint8_t *cache_key, int32_t size,
                                          struct halide_buffer_t *realized_bounds,
                                          int32_t tuple_count,
                                          struct halide_buffer_t **tuple_buffers);

/** If halide_memoization_cache_lookup succeeds,
 * halide_memoization_cache_release must be called to signal the
 * storage is no longer being used by the caller. It will be passed
 * the host pointer of one the buffers returned by
 * halide_memoization_cache_lookup. That is
 * halide_memoization_cache_release will be called multiple times for
 * the case where halide_memoization_cache_lookup is handling multiple
 * buffers.  (This corresponds to memoizing a Tuple in Halide.) Note
 * that the host pointer must be sufficient to get to all information
 * the relase operation needs. The default Halide cache impleemntation
 * accomplishes this by storing extra data before the start of the user
 * modifiable host storage.
 *
 * This call is like free and does not have a failure return.
  */
extern void halide_memoization_cache_release(void *user_context, void *host);

/** Free all memory and resources associated with the memoization cache.
 * Must be called at a time when no other threads are accessing the cache.
 */
extern void halide_memoization_cache_cleanup();

/** Create a unique file with a name of the form prefixXXXXXsuffix in an arbitrary
 * (but writable) directory; this is typically $TMP or /tmp, but the specific
 * location is not guaranteed. (Note that the exact form of the file name
 * may vary; in particular, the suffix may be ignored on non-Posix systems.)
 * The file is created (but not opened), thus this can be called from
 * different threads (or processes, e.g. when building with parallel make)
 * without risking collision. Note that the caller is always responsible
 * for deleting this file. Returns nonzero value if an error occurs.
 */
extern int halide_create_temp_file(void *user_context,
  const char *prefix, const char *suffix,
  char *path_buf, size_t path_buf_size);

/** Annotate that a given range of memory has been initialized;
 * only used when Target::MSAN is enabled.
 *
 * The default implementation uses the LLVM-provided AnnotateMemoryIsInitialized() function.
 */
extern void halide_msan_annotate_memory_is_initialized(void *user_context, const void *ptr, uint64_t len);

/** Mark the data pointed to by the buffer_t as initialized (but *not* the buffer_t itself),
 * using halide_msan_annotate_memory_is_initialized() for marking.
 *
 * The default implementation takes pains to only mark the active memory ranges
 * (skipping padding), and sorting into ranges to always mark the smallest number of
 * ranges, in monotonically increasing memory order.
 *
 * Most client code should never need to replace the default implementation.
 */
extern void halide_msan_annotate_buffer_is_initialized(void *user_context, struct halide_buffer_t *buffer);
extern void halide_msan_annotate_buffer_is_initialized_as_destructor(void *user_context, void *buffer);

/** The error codes that may be returned by a Halide pipeline. */
enum halide_error_code_t {
    /** There was no error. This is the value returned by Halide on success. */
    halide_error_code_success = 0,

    /** An uncategorized error occurred. Refer to the string passed to halide_error. */
    halide_error_code_generic_error = -1,

    /** A Func was given an explicit bound via Func::bound, but this
     * was not large enough to encompass the region that is used of
     * the Func by the rest of the pipeline. */
    halide_error_code_explicit_bounds_too_small = -2,

    /** The elem_size field of a halide_buffer_t does not match the size in
     * bytes of the type of that ImageParam. Probable type mismatch. */
    halide_error_code_bad_type = -3,

    /** A pipeline would access memory outside of the halide_buffer_t passed
     * in. */
    halide_error_code_access_out_of_bounds = -4,

    /** A halide_buffer_t was given that spans more than 2GB of memory. */
    halide_error_code_buffer_allocation_too_large = -5,

    /** A halide_buffer_t was given with extents that multiply to a number
     * greater than 2^31-1 */
    halide_error_code_buffer_extents_too_large = -6,

    /** Applying explicit constraints on the size of an input or
     * output buffer shrank the size of that buffer below what will be
     * accessed by the pipeline. */
    halide_error_code_constraints_make_required_region_smaller = -7,

    /** A constraint on a size or stride of an input or output buffer
     * was not met by the halide_buffer_t passed in. */
    halide_error_code_constraint_violated = -8,

    /** A scalar parameter passed in was smaller than its minimum
     * declared value. */
    halide_error_code_param_too_small = -9,

    /** A scalar parameter passed in was greater than its minimum
     * declared value. */
    halide_error_code_param_too_large = -10,

    /** A call to halide_malloc returned NULL. */
    halide_error_code_out_of_memory = -11,

    /** A halide_buffer_t pointer passed in was NULL. */
    halide_error_code_buffer_argument_is_null = -12,

    /** debug_to_file failed to open or write to the specified
     * file. */
    halide_error_code_debug_to_file_failed = -13,

    /** The Halide runtime encountered an error while trying to copy
     * from device to host. Turn on -debug in your target string to
     * see more details. */
    halide_error_code_copy_to_host_failed = -14,

    /** The Halide runtime encountered an error while trying to copy
     * from host to device. Turn on -debug in your target string to
     * see more details. */
    halide_error_code_copy_to_device_failed = -15,

    /** The Halide runtime encountered an error while trying to
     * allocate memory on device. Turn on -debug in your target string
     * to see more details. */
    halide_error_code_device_malloc_failed = -16,

    /** The Halide runtime encountered an error while trying to
     * synchronize with a device. Turn on -debug in your target string
     * to see more details. */
    halide_error_code_device_sync_failed = -17,

    /** The Halide runtime encountered an error while trying to free a
     * device allocation. Turn on -debug in your target string to see
     * more details. */
    halide_error_code_device_free_failed = -18,

    /** A device operation was attempted on a buffer with no device
     * interface. */
    halide_error_code_no_device_interface = -19,

    /** An error occurred when attempting to initialize the Matlab
     * runtime. */
    halide_error_code_matlab_init_failed = -20,

    /** The type of an mxArray did not match the expected type. */
    halide_error_code_matlab_bad_param_type = -21,

    /** There is a bug in the Halide compiler. */
    halide_error_code_internal_error = -22,

    /** The Halide runtime encountered an error while trying to launch
     * a GPU kernel. Turn on -debug in your target string to see more
     * details. */
    halide_error_code_device_run_failed = -23,

    /** The Halide runtime encountered a host pointer that violated
     * the alignment set for it by way of a call to
     * set_host_alignment */
    halide_error_code_unaligned_host_ptr = -24,

    /** A fold_storage directive was used on a dimension that is not
     * accessed in a monotonically increasing or decreasing fashion. */
    halide_error_code_bad_fold = -25,

    /** A fold_storage directive was used with a fold factor that was
     * too small to store all the values of a producer needed by the
     * consumer. */
    halide_error_code_fold_factor_too_small = -26,

    /** User-specified require() expression was not satisfied. */
    halide_error_code_requirement_failed = -27,

    /** At least one of the buffer's extents are negative. */
    halide_error_code_buffer_extents_negative = -28,

    /** A compiled pipeline was passed the old deprecated buffer_t
     * struct, and it could not be upgraded to a halide_buffer_t. */
    halide_error_code_failed_to_upgrade_buffer_t = -29,

    /** A compiled pipeline was passed the old deprecated buffer_t
     * struct in bounds inference mode, but the returned information
     * can't be expressed in the old buffer_t. */
    halide_error_code_failed_to_downgrade_buffer_t = -30,

    /** A specialize_fail() schedule branch was selected at runtime. */
    halide_error_code_specialize_fail = -31,

};

/** Halide calls the functions below on various error conditions. The
 * default implementations construct an error message, call
 * halide_error, then return the matching error code above. On
 * platforms that support weak linking, you can override these to
 * catch the errors individually. */

/** A call into an extern stage for the purposes of bounds inference
 * failed. Returns the error code given by the extern stage. */
extern int halide_error_bounds_inference_call_failed(void *user_context, const char *extern_stage_name, int result);

/** A call to an extern stage failed. Returned the error code given by
 * the extern stage. */
extern int halide_error_extern_stage_failed(void *user_context, const char *extern_stage_name, int result);

/** Various other error conditions. See the enum above for a
 * description of each. */
// @{
extern int halide_error_explicit_bounds_too_small(void *user_context, const char *func_name, const char *var_name,
                                                      int min_bound, int max_bound, int min_required, int max_required);
extern int halide_error_bad_type(void *user_context, const char *func_name,
                                 uint8_t code_given, uint8_t correct_code,
                                 uint8_t bits_given, uint8_t correct_bits,
                                 uint16_t lanes_given, uint16_t correct_lanes);
extern int halide_error_access_out_of_bounds(void *user_context, const char *func_name,
                                             int dimension, int min_touched, int max_touched,
                                             int min_valid, int max_valid);
extern int halide_error_buffer_allocation_too_large(void *user_context, const char *buffer_name,
                                                    uint64_t allocation_size, uint64_t max_size);
extern int halide_error_buffer_extents_negative(void *user_context, const char *buffer_name, int dimension, int extent);
extern int halide_error_buffer_extents_too_large(void *user_context, const char *buffer_name,
                                                 int64_t actual_size, int64_t max_size);
extern int halide_error_constraints_make_required_region_smaller(void *user_context, const char *buffer_name,
                                                                 int dimension,
                                                                 int constrained_min, int constrained_extent,
                                                                 int required_min, int required_extent);
extern int halide_error_constraint_violated(void *user_context, const char *var, int val,
                                            const char *constrained_var, int constrained_val);
extern int halide_error_param_too_small_i64(void *user_context, const char *param_name,
                                            int64_t val, int64_t min_val);
extern int halide_error_param_too_small_u64(void *user_context, const char *param_name,
                                            uint64_t val, uint64_t min_val);
extern int halide_error_param_too_small_f64(void *user_context, const char *param_name,
                                            double val, double min_val);
extern int halide_error_param_too_large_i64(void *user_context, const char *param_name,
                                            int64_t val, int64_t max_val);
extern int halide_error_param_too_large_u64(void *user_context, const char *param_name,
                                            uint64_t val, uint64_t max_val);
extern int halide_error_param_too_large_f64(void *user_context, const char *param_name,
                                            double val, double max_val);
extern int halide_error_out_of_memory(void *user_context);
extern int halide_error_buffer_argument_is_null(void *user_context, const char *buffer_name);
extern int halide_error_debug_to_file_failed(void *user_context, const char *func,
                                             const char *filename, int error_code);
extern int halide_error_unaligned_host_ptr(void *user_context, const char *func_name, int alignment);
extern int halide_error_failed_to_upgrade_buffer_t(void *user_context,
                                                   const char *input_name,
                                                   const char *reason);
extern int halide_error_failed_to_downgrade_buffer_t(void *user_context,
                                                     const char *input_name,
                                                     const char *reason);
extern int halide_error_bad_fold(void *user_context, const char *func_name, const char *var_name,
                                 const char *loop_name);

extern int halide_error_fold_factor_too_small(void *user_context, const char *func_name, const char *var_name,
                                              int fold_factor, const char *loop_name, int required_extent);
extern int halide_error_requirement_failed(void *user_context, const char *condition, const char *message);
extern int halide_error_specialize_fail(void *user_context, const char *message);

// @}

/** Optional features a compilation Target can have.
 */
typedef enum halide_target_feature_t {
    halide_target_feature_jit = 0,  ///< Generate code that will run immediately inside the calling process.
    halide_target_feature_debug = 1,  ///< Turn on debug info and output for runtime code.
    halide_target_feature_no_asserts = 2,  ///< Disable all runtime checks, for slightly tighter code.
    halide_target_feature_no_bounds_query = 3, ///< Disable the bounds querying functionality.

    halide_target_feature_sse41 = 4,  ///< Use SSE 4.1 and earlier instructions. Only relevant on x86.
    halide_target_feature_avx = 5,  ///< Use AVX 1 instructions. Only relevant on x86.
    halide_target_feature_avx2 = 6,  ///< Use AVX 2 instructions. Only relevant on x86.
    halide_target_feature_fma = 7,  ///< Enable x86 FMA instruction
    halide_target_feature_fma4 = 8,  ///< Enable x86 (AMD) FMA4 instruction set
    halide_target_feature_f16c = 9,  ///< Enable x86 16-bit float support

    halide_target_feature_armv7s = 10,  ///< Generate code for ARMv7s. Only relevant for 32-bit ARM.
    halide_target_feature_no_neon = 11,  ///< Avoid using NEON instructions. Only relevant for 32-bit ARM.

    halide_target_feature_vsx = 12,  ///< Use VSX instructions. Only relevant on POWERPC.
    halide_target_feature_power_arch_2_07 = 13,  ///< Use POWER ISA 2.07 new instructions. Only relevant on POWERPC.

    halide_target_feature_cuda = 14,  ///< Enable the CUDA runtime. Defaults to compute capability 2.0 (Fermi)
    halide_target_feature_cuda_capability30 = 15,  ///< Enable CUDA compute capability 3.0 (Kepler)
    halide_target_feature_cuda_capability32 = 16,  ///< Enable CUDA compute capability 3.2 (Tegra K1)
    halide_target_feature_cuda_capability35 = 17,  ///< Enable CUDA compute capability 3.5 (Kepler)
    halide_target_feature_cuda_capability50 = 18,  ///< Enable CUDA compute capability 5.0 (Maxwell)

    halide_target_feature_opencl = 19,  ///< Enable the OpenCL runtime.
    halide_target_feature_cl_doubles = 20,  ///< Enable double support on OpenCL targets

    halide_target_feature_opengl = 21,  ///< Enable the OpenGL runtime.
    halide_target_feature_openglcompute = 22, ///< Enable OpenGL Compute runtime.

    halide_target_feature_unused_23 = 23, ///< Unused. (Formerly: Enable the RenderScript runtime.)

    halide_target_feature_user_context = 24,  ///< Generated code takes a user_context pointer as first argument

    halide_target_feature_matlab = 25,  ///< Generate a mexFunction compatible with Matlab mex libraries. See tools/mex_halide.m.

    halide_target_feature_profile = 26, ///< Launch a sampling profiler alongside the Halide pipeline that monitors and reports the runtime used by each Func
    halide_target_feature_no_runtime = 27, ///< Do not include a copy of the Halide runtime in any generated object file or assembly

    halide_target_feature_metal = 28, ///< Enable the (Apple) Metal runtime.
    halide_target_feature_mingw = 29, ///< For Windows compile to MinGW toolset rather then Visual Studio

    halide_target_feature_c_plus_plus_mangling = 30, ///< Generate C++ mangled names for result function, et al

    halide_target_feature_large_buffers = 31, ///< Enable 64-bit buffer indexing to support buffers > 2GB.

    halide_target_feature_hvx_64 = 32, ///< Enable HVX 64 byte mode.
    halide_target_feature_hvx_128 = 33, ///< Enable HVX 128 byte mode.
    halide_target_feature_hvx_v62 = 34, ///< Enable Hexagon v62 architecture.
    halide_target_feature_fuzz_float_stores = 35, ///< On every floating point store, set the last bit of the mantissa to zero. Pipelines for which the output is very different with this feature enabled may also produce very different output on different processors.
    halide_target_feature_soft_float_abi = 36, ///< Enable soft float ABI. This only enables the soft float ABI calling convention, which does not necessarily use soft floats.
    halide_target_feature_msan = 37, ///< Enable hooks for MSAN support.
    halide_target_feature_avx512 = 38, ///< Enable the base AVX512 subset supported by all AVX512 architectures. The specific feature sets are AVX-512F and AVX512-CD. See https://en.wikipedia.org/wiki/AVX-512 for a description of each AVX subset.
    halide_target_feature_avx512_knl = 39, ///< Enable the AVX512 features supported by Knight's Landing chips, such as the Xeon Phi x200. This includes the base AVX512 set, and also AVX512-CD and AVX512-ER.
    halide_target_feature_avx512_skylake = 40, ///< Enable the AVX512 features supported by Skylake Xeon server processors. This adds AVX512-VL, AVX512-BW, and AVX512-DQ to the base set. The main difference from the base AVX512 set is better support for small integer ops. Note that this does not include the Knight's Landing features. Note also that these features are not available on Skylake desktop and mobile processors.
    halide_target_feature_avx512_cannonlake = 41, ///< Enable the AVX512 features expected to be supported by future Cannonlake processors. This includes all of the Skylake features, plus AVX512-IFMA and AVX512-VBMI.
    halide_target_feature_hvx_use_shared_object = 42, ///< Deprecated
    halide_target_feature_trace_loads = 43, ///< Trace all loads done by the pipeline. Equivalent to calling Func::trace_loads on every non-inlined Func.
    halide_target_feature_trace_stores = 44, ///< Trace all stores done by the pipeline. Equivalent to calling Func::trace_stores on every non-inlined Func.
    halide_target_feature_trace_realizations = 45, ///< Trace all realizations done by the pipeline. Equivalent to calling Func::trace_realizations on every non-inlined Func.
    halide_target_feature_cuda_capability61 = 46,  ///< Enable CUDA compute capability 6.1 (Pascal)
    halide_target_feature_hvx_v65 = 47, ///< Enable Hexagon v65 architecture.
    halide_target_feature_hvx_v66 = 48, ///< Enable Hexagon v66 architecture.
    //----- HLS Modification Begins -----//
    halide_target_feature_vivado_hls = 49,  ///< Enable Vivado HLS code generation.
    halide_target_feature_zynq = 50, ///< Enable Xilinx Zynq runtime.
    halide_target_feature_end = 51 ///< A sentinel. Every target is considered to have this feature, and setting this feature does nothing.
    //----- HLS Modification Ends -------//
} halide_target_feature_t;

/** This function is called internally by Halide in some situations to determine
 * if the current execution environment can support the given set of
 * halide_target_feature_t flags. The implementation must do the following:
 *
 * -- If there are flags set in features that the function knows *cannot* be supported, return 0.
 * -- Otherwise, return 1.
 * -- Note that any flags set in features that the function doesn't know how to test should be ignored;
 * this implies that a return value of 1 means "not known to be bad" rather than "known to be good".
 *
 * In other words: a return value of 0 means "It is not safe to use code compiled with these features",
 * while a return value of 1 means "It is not obviously unsafe to use code compiled with these features".
 *
 * The default implementation simply calls halide_default_can_use_target_features.
 */
// @{
extern int halide_can_use_target_features(uint64_t features);
typedef int (*halide_can_use_target_features_t)(uint64_t);
extern halide_can_use_target_features_t halide_set_custom_can_use_target_features(halide_can_use_target_features_t);
// @}

/**
 * This is the default implementation of halide_can_use_target_features; it is provided
 * for convenience of user code that may wish to extend halide_can_use_target_features
 * but continue providing existing support, e.g.
 *
 *     int halide_can_use_target_features(uint64_t features) {
 *          if (features & halide_target_somefeature) {
 *              if (!can_use_somefeature()) {
 *                  return 0;
 *              }
 *          }
 *          return halide_default_can_use_target_features(features);
 *     }
 */
extern int halide_default_can_use_target_features(uint64_t features);


typedef struct halide_dimension_t {
    int32_t min, extent, stride;

    // Per-dimension flags. None are defined yet (This is reserved for future use).
    uint32_t flags;

#ifdef __cplusplus
    HALIDE_ALWAYS_INLINE halide_dimension_t() : min(0), extent(0), stride(0), flags(0) {}
    HALIDE_ALWAYS_INLINE halide_dimension_t(int32_t m, int32_t e, int32_t s, uint32_t f = 0) :
        min(m), extent(e), stride(s), flags(f) {}

    HALIDE_ALWAYS_INLINE bool operator==(const halide_dimension_t &other) const {
        return (min == other.min) &&
            (extent == other.extent) &&
            (stride == other.stride) &&
            (flags == other.flags);
    }

    HALIDE_ALWAYS_INLINE bool operator!=(const halide_dimension_t &other) const {
        return !(*this == other);
    }
#endif
} halide_dimension_t;

#ifdef __cplusplus
} // extern "C"
#endif

typedef enum {halide_buffer_flag_host_dirty = 1,
              halide_buffer_flag_device_dirty = 2} halide_buffer_flags;

/**
 * The raw representation of an image passed around by generated
 * Halide code. It includes some stuff to track whether the image is
 * not actually in main memory, but instead on a device (like a
 * GPU). For a more convenient C++ wrapper, use Halide::Buffer<T>. */
typedef struct halide_buffer_t {
    /** A device-handle for e.g. GPU memory used to back this buffer. */
    uint64_t device;

    /** The interface used to interpret the above handle. */
    const struct halide_device_interface_t *device_interface;

    /** A pointer to the start of the data in main memory. In terms of
     * the Halide coordinate system, this is the address of the min
     * coordinates (defined below). */
    uint8_t* host;

    /** flags with various meanings. */
    uint64_t flags;

    /** The type of each buffer element. */
    struct halide_type_t type;

    /** The dimensionality of the buffer. */
    int32_t dimensions;

    /** The shape of the buffer. Halide does not own this array - you
     * must manage the memory for it yourself. */
    halide_dimension_t *dim;

    /** Pads the buffer up to a multiple of 8 bytes */
    void *padding;

#ifdef __cplusplus
    /** Convenience methods for accessing the flags */
    // @{
    HALIDE_ALWAYS_INLINE bool get_flag(halide_buffer_flags flag) const {
        return (flags & flag) != 0;
    }

    HALIDE_ALWAYS_INLINE void set_flag(halide_buffer_flags flag, bool value) {
        if (value) {
            flags |= flag;
        } else {
            flags &= ~flag;
        }
    }

    HALIDE_ALWAYS_INLINE bool host_dirty() const {
        return get_flag(halide_buffer_flag_host_dirty);
    }

    HALIDE_ALWAYS_INLINE bool device_dirty() const {
        return get_flag(halide_buffer_flag_device_dirty);
    }

    HALIDE_ALWAYS_INLINE void set_host_dirty(bool v = true) {
        set_flag(halide_buffer_flag_host_dirty, v);
    }

    HALIDE_ALWAYS_INLINE void set_device_dirty(bool v = true) {
        set_flag(halide_buffer_flag_device_dirty, v);
    }
    // @}

    /** The total number of elements this buffer represents. Equal to
     * the product of the extents */
    HALIDE_ALWAYS_INLINE size_t number_of_elements() const {
        size_t s = 1;
        for (int i = 0; i < dimensions; i++) {
            s *= dim[i].extent;
        }
        return s;
    }

    /** A pointer to the element with the lowest address. If all
     * strides are positive, equal to the host pointer. */
    HALIDE_ALWAYS_INLINE uint8_t *begin() const {
        ptrdiff_t index = 0;
        for (int i = 0; i < dimensions; i++) {
            if (dim[i].stride < 0) {
                index += dim[i].stride * (dim[i].extent - 1);
            }
        }
        return host + index * type.bytes();
    }

    /** A pointer to one beyond the element with the highest address. */
    HALIDE_ALWAYS_INLINE uint8_t *end() const {
        ptrdiff_t index = 0;
        for (int i = 0; i < dimensions; i++) {
            if (dim[i].stride > 0) {
                index += dim[i].stride * (dim[i].extent - 1);
            }
        }
        index += 1;
        return host + index * type.bytes();
    }

    /** The total number of bytes spanned by the data in memory. */
    HALIDE_ALWAYS_INLINE size_t size_in_bytes() const {
        return (size_t)(end() - begin());
    }

    /** A pointer to the element at the given location. */
    HALIDE_ALWAYS_INLINE uint8_t *address_of(const int *pos) const {
        ptrdiff_t index = 0;
        for (int i = 0; i < dimensions; i++) {
            index += dim[i].stride * (pos[i] - dim[i].min);
        }
        return host + index * type.bytes();
    }

#endif
} halide_buffer_t;

#ifdef __cplusplus
extern "C" {
#endif

#ifndef HALIDE_ATTRIBUTE_DEPRECATED
#ifdef HALIDE_ALLOW_DEPRECATED
#define HALIDE_ATTRIBUTE_DEPRECATED(x)
#else
#ifdef _MSC_VER
#define HALIDE_ATTRIBUTE_DEPRECATED(x) __declspec(deprecated(x))
#else
#define HALIDE_ATTRIBUTE_DEPRECATED(x) __attribute__((deprecated(x)))
#endif
#endif
#endif

/** The old buffer_t, included for compatibility with old code. Don't
 * use it. */
#ifndef BUFFER_T_DEFINED
#define BUFFER_T_DEFINED
typedef struct buffer_t {
    uint64_t dev;
    uint8_t* host;
    int32_t extent[4];
    int32_t stride[4];
    int32_t min[4];
    int32_t elem_size;
    HALIDE_ATTRIBUTE_ALIGN(1) bool host_dirty;
    HALIDE_ATTRIBUTE_ALIGN(1) bool dev_dirty;
    HALIDE_ATTRIBUTE_ALIGN(1) uint8_t _padding[10 - sizeof(void *)];
} buffer_t;
#endif // BUFFER_T_DEFINED

/** Copies host pointer, mins, extents, strides, and device state from
 * an old-style buffer_t into a new-style halide_buffer_t. The
 * dimensions and type fields of the new buffer_t should already be
 * set. Returns an error code if the upgrade could not be
 * performed. */
extern int halide_upgrade_buffer_t(void *user_context, const char *name,
                                   const buffer_t *old_buf, halide_buffer_t *new_buf);

/** Copies the host pointer, mins, extents, strides, and device state
 * from a halide_buffer_t to a buffer_t. Also sets elem_size. Useful
 * for backporting the results of bounds inference. */
extern int halide_downgrade_buffer_t(void *user_context, const char *name,
                                     const halide_buffer_t *new_buf, buffer_t *old_buf);

/** Copies the dirty flags and device allocation state from a new
 * buffer_t back to a legacy buffer_t. */
extern int halide_downgrade_buffer_t_device_fields(void *user_context, const char *name,
                                                   const halide_buffer_t *new_buf, buffer_t *old_buf);

/** halide_scalar_value_t is a simple union able to represent all the well-known
 * scalar values in a filter argument. Note that it isn't tagged with a type;
 * you must ensure you know the proper type before accessing. Most user
 * code will never need to create instances of this struct; its primary use
 * is to hold def/min/max values in a halide_filter_argument_t. (Note that
 * this is conceptually just a union; it's wrapped in a struct to ensure
 * that it doesn't get anonymized by LLVM.)
 */
struct halide_scalar_value_t {
    union {
        bool b;
        int8_t i8;
        int16_t i16;
        int32_t i32;
        int64_t i64;
        uint8_t u8;
        uint16_t u16;
        uint32_t u32;
        uint64_t u64;
        float f32;
        double f64;
        void *handle;
    } u;
};

enum halide_argument_kind_t {
    halide_argument_kind_input_scalar = 0,
    halide_argument_kind_input_buffer = 1,
    halide_argument_kind_output_buffer = 2
};

/*
    These structs must be robust across different compilers and settings; when
    modifying them, strive for the following rules:

    1) All fields are explicitly sized. I.e. must use int32_t and not "int"
    2) All fields must land on an alignment boundary that is the same as their size
    3) Explicit padding is added to make that so
    4) The sizeof the struct is padded out to a multiple of the largest natural size thing in the struct
    5) don't forget that 32 and 64 bit pointers are different sizes
*/

/**
 * halide_filter_argument_t is essentially a plain-C-struct equivalent to
 * Halide::Argument; most user code will never need to create one.
 */
struct halide_filter_argument_t {
    const char *name;       // name of the argument; will never be null or empty.
    int32_t kind;           // actually halide_argument_kind_t
    int32_t dimensions;     // always zero for scalar arguments
    struct halide_type_t type;
    // These pointers should always be null for buffer arguments,
    // and *may* be null for scalar arguments. (A null value means
    // there is no def/min/max specified for this argument.)
    const struct halide_scalar_value_t *def;
    const struct halide_scalar_value_t *min;
    const struct halide_scalar_value_t *max;
};

struct halide_filter_metadata_t {
    /** version of this metadata; currently always 0. */
    int32_t version;

    /** The number of entries in the arguments field. This is always >= 1. */
    int32_t num_arguments;

    /** An array of the filters input and output arguments; this will never be
     * null. The order of arguments is not guaranteed (input and output arguments
     * may come in any order); however, it is guaranteed that all arguments
     * will have a unique name within a given filter. */
    const struct halide_filter_argument_t* arguments;

    /** The Target for which the filter was compiled. This is always
     * a canonical Target string (ie a product of Target::to_string). */
    const char* target;

    /** The function name of the filter. */
    const char* name;
};

/** The functions below here are relevant for pipelines compiled with
 * the -profile target flag, which runs a sampling profiler thread
 * alongside the pipeline. */

/** Per-Func state tracked by the sampling profiler. */
struct halide_profiler_func_stats {
    /** Total time taken evaluating this Func (in nanoseconds). */
    uint64_t time;

    /** The current memory allocation of this Func. */
    uint64_t memory_current;

    /** The peak memory allocation of this Func. */
    uint64_t memory_peak;

    /** The total memory allocation of this Func. */
    uint64_t memory_total;

    /** The peak stack allocation of this Func's threads. */
    uint64_t stack_peak;

    /** The average number of thread pool worker threads active while computing this Func. */
    uint64_t active_threads_numerator, active_threads_denominator;

    /** The name of this Func. A global constant string. */
    const char *name;

    /** The total number of memory allocation of this Func. */
    int num_allocs;
};

/** Per-pipeline state tracked by the sampling profiler. These exist
 * in a linked list. */
struct halide_profiler_pipeline_stats {
    /** Total time spent inside this pipeline (in nanoseconds) */
    uint64_t time;

    /** The current memory allocation of funcs in this pipeline. */
    uint64_t memory_current;

    /** The peak memory allocation of funcs in this pipeline. */
    uint64_t memory_peak;

    /** The total memory allocation of funcs in this pipeline. */
    uint64_t memory_total;

    /** The average number of thread pool worker threads doing useful
     * work while computing this pipeline. */
    uint64_t active_threads_numerator, active_threads_denominator;

    /** The name of this pipeline. A global constant string. */
    const char *name;

    /** An array containing states for each Func in this pipeline. */
    struct halide_profiler_func_stats *funcs;

    /** The next pipeline_stats pointer. It's a void * because types
     * in the Halide runtime may not currently be recursive. */
    void *next;

    /** The number of funcs in this pipeline. */
    int num_funcs;

    /** An internal base id used to identify the funcs in this pipeline. */
    int first_func_id;

    /** The number of times this pipeline has been run. */
    int runs;

    /** The total number of samples taken inside of this pipeline. */
    int samples;

    /** The total number of memory allocation of funcs in this pipeline. */
    int num_allocs;
};

/** The global state of the profiler. */
struct halide_profiler_state {
    /** Guards access to the fields below. If not locked, the sampling
     * profiler thread is free to modify things below (including
     * reordering the linked list of pipeline stats). */
    struct halide_mutex lock;

    /** The amount of time the profiler thread sleeps between samples
     * in milliseconds. Defaults to 1 */
    int sleep_time;

    /** An internal id used for bookkeeping. */
    int first_free_id;

    /** The id of the current running Func. Set by the pipeline, read
     * periodically by the profiler thread. */
    int current_func;

    /** The number of threads currently doing work. */
    int active_threads;

    /** A linked list of stats gathered for each pipeline. */
    struct halide_profiler_pipeline_stats *pipelines;

    /** Retrieve remote profiler state. Used so that the sampling
     * profiler can follow along with execution that occurs elsewhere,
     * e.g. on a DSP. If null, it reads from the int above instead. */
    void (*get_remote_profiler_state)(int *func, int *active_workers);

    /** Is the profiler thread running. */
    bool started;
};

/** Profiler func ids with special meanings. */
enum {
    /// current_func takes on this value when not inside Halide code
    halide_profiler_outside_of_halide = -1,
    /// Set current_func to this value to tell the profiling thread to
    /// halt. It will start up again next time you run a pipeline with
    /// profiling enabled.
    halide_profiler_please_stop = -2
};

/** Get a pointer to the global profiler state for programmatic
 * inspection. Lock it before using to pause the profiler. */
extern struct halide_profiler_state *halide_profiler_get_state();

/** Get a pointer to the pipeline state associated with pipeline_name.
 * This function grabs the global profiler state's lock on entry. */
extern struct halide_profiler_pipeline_stats *halide_profiler_get_pipeline_state(const char *pipeline_name);

/** Reset all profiler state.
 * WARNING: Do NOT call this method while any halide pipeline is
 * running; halide_profiler_memory_allocate/free and
 * halide_profiler_stack_peak_update update the profiler pipeline's
 * state without grabbing the global profiler state's lock. */
extern void halide_profiler_reset();

/** Print out timing statistics for everything run since the last
 * reset. Also happens at process exit. */
extern void halide_profiler_report(void *user_context);

/// \name "Float16" functions
/// These functions operate of bits (``uint16_t``) representing a half
/// precision floating point number (IEEE-754 2008 binary16).
//{@

/** Read bits representing a half precision floating point number and return
 *  the float that represents the same value */
extern float halide_float16_bits_to_float(uint16_t);

/** Read bits representing a half precision floating point number and return
 *  the double that represents the same value */
extern double halide_float16_bits_to_double(uint16_t);

// TODO: Conversion functions to half

//@}

#ifdef __cplusplus
} // End extern "C"
#endif

#ifdef __cplusplus

namespace {
template<typename T> struct check_is_pointer;
template<typename T> struct check_is_pointer<T *> {};
}

/** Construct the halide equivalent of a C type */
template<typename T>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of() {
    // Create a compile-time error if T is not a pointer (without
    // using any includes - this code goes into the runtime).
    check_is_pointer<T> check;
    (void)check;
    return halide_type_t(halide_type_handle, 64);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<float>() {
    return halide_type_t(halide_type_float, 32);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<double>() {
    return halide_type_t(halide_type_float, 64);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<bool>() {
    return halide_type_t(halide_type_uint, 1);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<uint8_t>() {
    return halide_type_t(halide_type_uint, 8);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<uint16_t>() {
    return halide_type_t(halide_type_uint, 16);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<uint32_t>() {
    return halide_type_t(halide_type_uint, 32);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<uint64_t>() {
    return halide_type_t(halide_type_uint, 64);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<int8_t>() {
    return halide_type_t(halide_type_int, 8);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<int16_t>() {
    return halide_type_t(halide_type_int, 16);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<int32_t>() {
    return halide_type_t(halide_type_int, 32);
}

template<>
HALIDE_ALWAYS_INLINE halide_type_t halide_type_of<int64_t>() {
    return halide_type_t(halide_type_int, 64);
}

#endif

#endif // HALIDE_HALIDERUNTIME_H

#ifdef COMPILING_HALIDE_RUNTIME
#include "HalideRuntime.h"
#define HALIDE_BUFFER_HELPER_ATTRS __attribute__((always_inline, weak))
#else
#define HALIDE_BUFFER_HELPER_ATTRS inline
#endif

// Structs are annoying to deal with from within Halide Stmts. These
// utility functions are for dealing with buffer_t in that
// context. They are not intended for use outside of Halide code, and
// not exposed in HalideRuntime.h. The symbols are private to the
// module and should be inlined and then stripped. This blob of code
// also gets copy-pasted into C outputs.

extern "C" {

HALIDE_BUFFER_HELPER_ATTRS
uint8_t *_halide_buffer_get_host(const halide_buffer_t *buf) {
    return buf->host;
}

HALIDE_BUFFER_HELPER_ATTRS
uint64_t _halide_buffer_get_device(const halide_buffer_t *buf) {
    return buf->device;
}

HALIDE_BUFFER_HELPER_ATTRS
const struct halide_device_interface_t *_halide_buffer_get_device_interface(const halide_buffer_t *buf) {
    return buf->device_interface;
}

HALIDE_BUFFER_HELPER_ATTRS
int _halide_buffer_get_min(const halide_buffer_t *buf, int d) {
    return buf->dim[d].min;
}

HALIDE_BUFFER_HELPER_ATTRS
int _halide_buffer_get_max(const halide_buffer_t *buf, int d) {
    return buf->dim[d].min + buf->dim[d].extent - 1;
}

HALIDE_BUFFER_HELPER_ATTRS
int _halide_buffer_get_extent(const halide_buffer_t *buf, int d) {
    return buf->dim[d].extent;
}

HALIDE_BUFFER_HELPER_ATTRS
int _halide_buffer_get_stride(const halide_buffer_t *buf, int d) {
    return buf->dim[d].stride;
}

HALIDE_BUFFER_HELPER_ATTRS
int _halide_buffer_set_host_dirty(halide_buffer_t *buf, bool val) {
    buf->set_host_dirty(val);
    return 0;
}

HALIDE_BUFFER_HELPER_ATTRS
int _halide_buffer_set_device_dirty(halide_buffer_t *buf, bool val) {
    buf->set_device_dirty(val);
    return 0;
}

HALIDE_BUFFER_HELPER_ATTRS
bool _halide_buffer_get_host_dirty(const halide_buffer_t *buf) {
    return buf->host_dirty();
}

HALIDE_BUFFER_HELPER_ATTRS
bool _halide_buffer_get_device_dirty(const halide_buffer_t *buf) {
    return buf->device_dirty();
}

HALIDE_BUFFER_HELPER_ATTRS
halide_dimension_t *_halide_buffer_get_shape(halide_buffer_t *buf) {
    return buf->dim;
}

HALIDE_BUFFER_HELPER_ATTRS
bool _halide_buffer_is_bounds_query(const halide_buffer_t *buf) {
    return buf->host == NULL && buf->device == 0;
}

HALIDE_BUFFER_HELPER_ATTRS
uint8_t _halide_buffer_get_type_code(const halide_buffer_t *buf) {
    return buf->type.code;
}

HALIDE_BUFFER_HELPER_ATTRS
uint8_t _halide_buffer_get_type_bits(const halide_buffer_t *buf) {
    return buf->type.bits;
}

HALIDE_BUFFER_HELPER_ATTRS
uint16_t _halide_buffer_get_type_lanes(const halide_buffer_t *buf) {
    return buf->type.lanes;
}

HALIDE_BUFFER_HELPER_ATTRS
halide_buffer_t *_halide_buffer_init(halide_buffer_t *dst,
                                     halide_dimension_t *dst_shape,
                                     void *host,
                                     uint64_t device, halide_device_interface_t *device_interface,
                                     int type_code, int type_bits,
                                     int dimensions,
                                     halide_dimension_t *shape,
                                     uint64_t flags) {
    dst->host = (uint8_t *)host;
    dst->device = device;
    dst->device_interface = device_interface;
    dst->type.code = (halide_type_code_t)type_code;
    dst->type.bits = (uint8_t)type_bits;
    dst->type.lanes = 1;
    dst->dimensions = dimensions;
    dst->dim = dst_shape;
    if (shape != dst->dim) {
        for (int i = 0; i < dimensions; i++) {
            dst->dim[i] = shape[i];
        }
    }
    dst->flags = flags;
    return dst;
}

HALIDE_BUFFER_HELPER_ATTRS
halide_buffer_t *_halide_buffer_init_from_buffer(halide_buffer_t *dst,
                                                 halide_dimension_t *dst_shape,
                                                 const halide_buffer_t *src) {
    dst->host = src->host;
    dst->device = src->device;
    dst->device_interface = src->device_interface;
    dst->type = src->type;
    dst->dimensions = src->dimensions;
    dst->dim = dst_shape;
    dst->flags = src->flags;
    for (int i = 0; i < dst->dimensions; i++) {
        dst->dim[i] = src->dim[i];
    }
    return dst;
}

HALIDE_BUFFER_HELPER_ATTRS
halide_buffer_t *_halide_buffer_crop(halide_buffer_t *dst,
                                     halide_dimension_t *dst_shape,
                                     const halide_buffer_t *src,
                                     const int *min, const int *extent) {
    *dst = *src;
    dst->dim = dst_shape;
    int64_t offset = 0;
    for (int i = 0; i < dst->dimensions; i++) {
        dst->dim[i] = src->dim[i];
        dst->dim[i].min = min[i];
        dst->dim[i].extent = extent[i];
        offset += (min[i] - src->dim[i].min) * src->dim[i].stride;
    }
    dst->host += offset * src->type.bytes();
    return dst;
}

}

#undef HALIDE_BUFFER_HELPER_ATTRS

#ifndef HALIDE_FUNCTION_ATTRS
#define HALIDE_FUNCTION_ATTRS
#endif
#include <hls_stream.h>
#include "Stencil.h"
#include "hls_target.h"

struct buffer_t;

int32_t pipeline_hls(struct halide_buffer_t *, struct halide_buffer_t *);

int pipeline_hls(struct halide_buffer_t *_p2_input_buffer, struct halide_buffer_t *_output_buffer) HALIDE_FUNCTION_ATTRS {
 void * const _ucon = nullptr;
 uint64_t _0 = (uint64_t)(_p2_input_buffer);
 uint64_t _1 = (uint64_t)(0);
 bool _2 = _0 != _1;
 if (!_2)  {
  int32_t _3 = halide_error_buffer_argument_is_null(_ucon, "p2:input");
  return _3;
 }
 uint64_t _4 = (uint64_t)(_output_buffer);
 uint64_t _5 = (uint64_t)(0);
 bool _6 = _4 != _5;
 if (!_6)  {
  int32_t _7 = halide_error_buffer_argument_is_null(_ucon, "output");
  return _7;
 }
 void *_8 = _halide_buffer_get_host(_output_buffer);
 void * _output = _8;
 uint8_t _9 = _halide_buffer_get_type_code(_output_buffer);
 uint8_t _10 = _halide_buffer_get_type_bits(_output_buffer);
 uint16_t _11 = _halide_buffer_get_type_lanes(_output_buffer);
 int32_t _12 = _halide_buffer_get_min(_output_buffer, 0);
 int32_t _13 = _halide_buffer_get_extent(_output_buffer, 0);
 int32_t _14 = _halide_buffer_get_stride(_output_buffer, 0);
 int32_t _15 = _halide_buffer_get_min(_output_buffer, 1);
 int32_t _16 = _halide_buffer_get_extent(_output_buffer, 1);
 int32_t _17 = _halide_buffer_get_stride(_output_buffer, 1);
 void *_18 = _halide_buffer_get_host(_p2_input_buffer);
 void * _p2_input = _18;
 uint8_t _19 = _halide_buffer_get_type_code(_p2_input_buffer);
 uint8_t _20 = _halide_buffer_get_type_bits(_p2_input_buffer);
 uint16_t _21 = _halide_buffer_get_type_lanes(_p2_input_buffer);
 int32_t _22 = _halide_buffer_get_min(_p2_input_buffer, 0);
 int32_t _23 = _halide_buffer_get_extent(_p2_input_buffer, 0);
 int32_t _24 = _halide_buffer_get_stride(_p2_input_buffer, 0);
 int32_t _25 = _halide_buffer_get_min(_p2_input_buffer, 1);
 int32_t _26 = _halide_buffer_get_extent(_p2_input_buffer, 1);
 int32_t _27 = _halide_buffer_get_stride(_p2_input_buffer, 1);
 bool _28 = _halide_buffer_is_bounds_query(_output_buffer);
 if (_28)
 {
  struct halide_dimension_t *_29 = _halide_buffer_get_shape(_output_buffer);
  uint64_t _30 = (uint64_t)(0);
  void *_31 = (void *)(_30);
  struct halide_device_interface_t *_32 = (struct halide_device_interface_t *)(_30);
  struct {
   const int32_t f_0;
   const int32_t f_1;
   const int32_t f_2;
   const int32_t f_3;
   const int32_t f_4;
   const int32_t f_5;
   const int32_t f_6;
   const int32_t f_7;
  } s0 = {
   _12,
   _13,
   1,
   0,
   _15,
   _16,
   _13,
   0
  };
  struct halide_dimension_t *_33 = (struct halide_dimension_t *)(&s0);
  struct halide_buffer_t *_34 = _halide_buffer_init(_output_buffer, _29, _31, _30, _32, 1, 8, 2, _33, _30);
  (void)_34;
 } // if _28
 bool _35 = _halide_buffer_is_bounds_query(_p2_input_buffer);
 if (_35)
 {
  struct halide_dimension_t *_36 = _halide_buffer_get_shape(_p2_input_buffer);
  uint64_t _37 = (uint64_t)(0);
  void *_38 = (void *)(_37);
  struct halide_device_interface_t *_39 = (struct halide_device_interface_t *)(_37);
  int32_t _40 = _13 + 2;
  int32_t _41 = _16 + 2;
  struct {
   const int32_t f_0;
   const int32_t f_1;
   const int32_t f_2;
   const int32_t f_3;
   const int32_t f_4;
   const int32_t f_5;
   const int32_t f_6;
   const int32_t f_7;
  } s1 = {
   _12,
   _40,
   1,
   0,
   _15,
   _41,
   _40,
   0
  };
  struct halide_dimension_t *_42 = (struct halide_dimension_t *)(&s1);
  struct halide_buffer_t *_43 = _halide_buffer_init(_p2_input_buffer, _36, _38, _37, _39, 1, 8, 2, _42, _37);
  (void)_43;
 } // if _35
 bool _44 = _halide_buffer_is_bounds_query(_output_buffer);
 bool _45 = _halide_buffer_is_bounds_query(_p2_input_buffer);
 bool _46 = _44 || _45;
 bool _47 = !(_46);
 if (_47)
 {
  uint8_t _48 = (uint8_t)(1);
  bool _49 = _9 == _48;
  uint8_t _50 = (uint8_t)(8);
  bool _51 = _10 == _50;
  bool _52 = _49 && _51;
  uint16_t _53 = (uint16_t)(1);
  bool _54 = _11 == _53;
  bool _55 = _52 && _54;
  if (!_55)   {
   uint8_t _56 = (uint8_t)(1);
   uint8_t _57 = (uint8_t)(8);
   uint16_t _58 = (uint16_t)(1);
   int32_t _59 = halide_error_bad_type(_ucon, "Output buffer output", _9, _56, _10, _57, _11, _58);
   return _59;
  }
  uint8_t _60 = (uint8_t)(1);
  bool _61 = _19 == _60;
  uint8_t _62 = (uint8_t)(8);
  bool _63 = _20 == _62;
  bool _64 = _61 && _63;
  uint16_t _65 = (uint16_t)(1);
  bool _66 = _21 == _65;
  bool _67 = _64 && _66;
  if (!_67)   {
   uint8_t _68 = (uint8_t)(1);
   uint8_t _69 = (uint8_t)(8);
   uint16_t _70 = (uint16_t)(1);
   int32_t _71 = halide_error_bad_type(_ucon, "Input buffer p2:input", _19, _68, _20, _69, _21, _70);
   return _71;
  }
  bool _72 = 0 <= _13;
  if (!_72)   {
   int32_t _73 = halide_error_buffer_extents_negative(_ucon, "Output buffer output", 0, _13);
   return _73;
  }
  bool _74 = 0 <= _16;
  if (!_74)   {
   int32_t _75 = halide_error_buffer_extents_negative(_ucon, "Output buffer output", 1, _16);
   return _75;
  }
  bool _76 = _22 <= _12;
  int32_t _77 = _12 + _13;
  int32_t _78 = _77 - _23;
  int32_t _79 = _78 + 2;
  bool _80 = _79 <= _22;
  bool _81 = _76 && _80;
  if (!_81)   {
   int32_t _82 = _12 + _13;
   int32_t _83 = _82 + 1;
   int32_t _84 = _22 + _23;
   int32_t _85 = _84 + -1;
   int32_t _86 = halide_error_access_out_of_bounds(_ucon, "Input buffer p2:input", 0, _12, _83, _22, _85);
   return _86;
  }
  bool _87 = 0 <= _23;
  if (!_87)   {
   int32_t _88 = halide_error_buffer_extents_negative(_ucon, "Input buffer p2:input", 0, _23);
   return _88;
  }
  bool _89 = _25 <= _15;
  int32_t _90 = _15 + _16;
  int32_t _91 = _90 - _26;
  int32_t _92 = _91 + 2;
  bool _93 = _92 <= _25;
  bool _94 = _89 && _93;
  if (!_94)   {
   int32_t _95 = _15 + _16;
   int32_t _96 = _95 + 1;
   int32_t _97 = _25 + _26;
   int32_t _98 = _97 + -1;
   int32_t _99 = halide_error_access_out_of_bounds(_ucon, "Input buffer p2:input", 1, _15, _96, _25, _98);
   return _99;
  }
  bool _100 = 0 <= _26;
  if (!_100)   {
   int32_t _101 = halide_error_buffer_extents_negative(_ucon, "Input buffer p2:input", 1, _26);
   return _101;
  }
  bool _102 = _14 == 1;
  if (!_102)   {
   int32_t _103 = halide_error_constraint_violated(_ucon, "output.stride.0", _14, "1", 1);
   return _103;
  }
  bool _104 = _24 == 1;
  if (!_104)   {
   int32_t _105 = halide_error_constraint_violated(_ucon, "p2:input.stride.0", _24, "1", 1);
   return _105;
  }
  int64_t _106 = (int64_t)(_16);
  int64_t _107 = (int64_t)(_13);
  int64_t _108 = _106 * _107;
  int64_t _109 = (int64_t)(_26);
  int64_t _110 = (int64_t)(_23);
  int64_t _111 = _109 * _110;
  int64_t _112 = (int64_t)(0);
  int64_t _113 = _112 - _107;
  bool _114 = _107 > _112;
  int64_t _115 = (int64_t)(_114 ? _107 : _113);
  uint64_t _116 = (uint64_t)(_115);
  uint64_t _117 = _116;
  uint64_t _118 = (uint64_t)(2147483647);
  bool _119 = _117 <= _118;
  if (!_119)   {
   int64_t _120 = (int64_t)(_13);
   int64_t _121 = (int64_t)(0);
   int64_t _122 = _121 - _120;
   bool _123 = _120 > _121;
   int64_t _124 = (int64_t)(_123 ? _120 : _122);
   uint64_t _125 = (uint64_t)(_124);
   uint64_t _126 = _125;
   uint64_t _127 = (uint64_t)(2147483647);
   int32_t _128 = halide_error_buffer_allocation_too_large(_ucon, "output", _126, _127);
   return _128;
  }
  int64_t _129 = (int64_t)(_16);
  int64_t _130 = (int64_t)(_17);
  int64_t _131 = _129 * _130;
  int64_t _132 = (int64_t)(0);
  int64_t _133 = _132 - _131;
  bool _134 = _131 > _132;
  int64_t _135 = (int64_t)(_134 ? _131 : _133);
  uint64_t _136 = (uint64_t)(_135);
  uint64_t _137 = _136;
  uint64_t _138 = (uint64_t)(2147483647);
  bool _139 = _137 <= _138;
  if (!_139)   {
   int64_t _140 = (int64_t)(_16);
   int64_t _141 = (int64_t)(_17);
   int64_t _142 = _140 * _141;
   int64_t _143 = (int64_t)(0);
   int64_t _144 = _143 - _142;
   bool _145 = _142 > _143;
   int64_t _146 = (int64_t)(_145 ? _142 : _144);
   uint64_t _147 = (uint64_t)(_146);
   uint64_t _148 = _147;
   uint64_t _149 = (uint64_t)(2147483647);
   int32_t _150 = halide_error_buffer_allocation_too_large(_ucon, "output", _148, _149);
   return _150;
  }
  int64_t _151 = (int64_t)(2147483647);
  bool _152 = _108 <= _151;
  if (!_152)   {
   int64_t _153 = (int64_t)(2147483647);
   int32_t _154 = halide_error_buffer_extents_too_large(_ucon, "output", _108, _153);
   return _154;
  }
  int64_t _155 = (int64_t)(_23);
  int64_t _156 = (int64_t)(0);
  int64_t _157 = _156 - _155;
  bool _158 = _155 > _156;
  int64_t _159 = (int64_t)(_158 ? _155 : _157);
  uint64_t _160 = (uint64_t)(_159);
  uint64_t _161 = _160;
  uint64_t _162 = (uint64_t)(2147483647);
  bool _163 = _161 <= _162;
  if (!_163)   {
   int64_t _164 = (int64_t)(_23);
   int64_t _165 = (int64_t)(0);
   int64_t _166 = _165 - _164;
   bool _167 = _164 > _165;
   int64_t _168 = (int64_t)(_167 ? _164 : _166);
   uint64_t _169 = (uint64_t)(_168);
   uint64_t _170 = _169;
   uint64_t _171 = (uint64_t)(2147483647);
   int32_t _172 = halide_error_buffer_allocation_too_large(_ucon, "p2:input", _170, _171);
   return _172;
  }
  int64_t _173 = (int64_t)(_26);
  int64_t _174 = (int64_t)(_27);
  int64_t _175 = _173 * _174;
  int64_t _176 = (int64_t)(0);
  int64_t _177 = _176 - _175;
  bool _178 = _175 > _176;
  int64_t _179 = (int64_t)(_178 ? _175 : _177);
  uint64_t _180 = (uint64_t)(_179);
  uint64_t _181 = _180;
  uint64_t _182 = (uint64_t)(2147483647);
  bool _183 = _181 <= _182;
  if (!_183)   {
   int64_t _184 = (int64_t)(_26);
   int64_t _185 = (int64_t)(_27);
   int64_t _186 = _184 * _185;
   int64_t _187 = (int64_t)(0);
   int64_t _188 = _187 - _186;
   bool _189 = _186 > _187;
   int64_t _190 = (int64_t)(_189 ? _186 : _188);
   uint64_t _191 = (uint64_t)(_190);
   uint64_t _192 = _191;
   uint64_t _193 = (uint64_t)(2147483647);
   int32_t _194 = halide_error_buffer_allocation_too_large(_ucon, "p2:input", _192, _193);
   return _194;
  }
  int64_t _195 = (int64_t)(2147483647);
  bool _196 = _111 <= _195;
  if (!_196)   {
   int64_t _197 = (int64_t)(2147483647);
   int32_t _198 = halide_error_buffer_extents_too_large(_ucon, "p2:input", _111, _197);
   return _198;
  }
  int32_t _199 = _15 + _16;
  int32_t _200 = _199 + -1080;
  int32_t _201 = min(_15, _200);
  int32_t _202 = _16 + -1;
  int32_t _203 = _202 / 1080;
  int32_t _204 = _203 * 1080;
  int32_t _205 = _202 - _204;
  int32_t _206 = _205 >> 31;
  int32_t _207 = 1080 >> 31;
  int32_t _208 = _206 & _207;
  int32_t _209 = _203 - _208;
  int32_t _210 = ~_207;
  int32_t _211 = _206 & _210;
  int32_t _212 = _209 + _211;
  int32_t _213 = _212 * 1080;
  int32_t _214 = _213 + _15;
  int32_t _215 = _214 + 1079;
  int32_t _216 = _199 + -1;
  int32_t _217 = min(_215, _216);
  int32_t _218 = _217 + 2;
  int32_t _219 = _199 + 1;
  int32_t _220 = max(_218, _219);
  int32_t _221 = _12 + _13;
  int32_t _222 = _221 + -1920;
  int32_t _223 = min(_12, _222);
  int32_t _224 = _13 + -1;
  int32_t _225 = _224 / 1920;
  int32_t _226 = _225 * 1920;
  int32_t _227 = _224 - _226;
  int32_t _228 = _227 >> 31;
  int32_t _229 = 1920 >> 31;
  int32_t _230 = _228 & _229;
  int32_t _231 = _225 - _230;
  int32_t _232 = ~_229;
  int32_t _233 = _228 & _232;
  int32_t _234 = _231 + _233;
  int32_t _235 = _234 * 1920;
  int32_t _236 = _235 + _12;
  int32_t _237 = _236 + 1919;
  int32_t _238 = _221 + -1;
  int32_t _239 = min(_237, _238);
  int32_t _240 = _239 + 2;
  int32_t _241 = _221 + 1;
  int32_t _242 = max(_240, _241);
  {
   int32_t _243 = _242 - _223;
   int32_t _244 = _243 + 1;
   int64_t _245 = _244;
   int32_t _246 = _220 - _201;
   int32_t _247 = _246 + 1;
   int64_t _248 = _245 * _247;
   if ((_248 > ((int64_t(1) << 31) - 1)) || ((_248 * sizeof(uint8_t )) > ((int64_t(1) << 31) - 1)))
   {
    halide_error(_ucon, "32-bit signed overflow computing size of allocation hw_input\n");
    return -1;
   } // overflow test hw_input
   int64_t _249 = _248;
   uint8_t *_hw_input = (uint8_t  *)halide_malloc(_ucon, sizeof(uint8_t )*_249);
   if (!_hw_input)
   {
    return halide_error_out_of_memory(_ucon);
   }
   HalideFreeHelper _hw_input_free(_ucon, _hw_input, halide_free);
   halide_buffer_t b1;
   struct halide_buffer_t *_250 = &b1;
   int32_t _251 = _242 - _223;
   int32_t _252 = _251 + 1;
   int32_t _253 = _220 - _201;
   int32_t _254 = _253 + 1;
   struct {
    const int32_t f_0;
    const int32_t f_1;
    const int32_t f_2;
    const int32_t f_3;
    const int32_t f_4;
    const int32_t f_5;
    const int32_t f_6;
    const int32_t f_7;
   } s2 = {
    _223,
    _252,
    1,
    0,
    _201,
    _254,
    _252,
    0
   };
   struct halide_dimension_t *_255 = (struct halide_dimension_t *)(&s2);
   uint64_t _256 = (uint64_t)(0);
   struct halide_device_interface_t *_257 = (struct halide_device_interface_t *)(_256);
   struct {
    const int32_t f_0;
    const int32_t f_1;
    const int32_t f_2;
    const int32_t f_3;
    const int32_t f_4;
    const int32_t f_5;
    const int32_t f_6;
    const int32_t f_7;
   } s3 = {
    _223,
    _252,
    1,
    0,
    _201,
    _254,
    _252,
    0
   };
   struct halide_dimension_t *_258 = (struct halide_dimension_t *)(&s3);
   struct halide_buffer_t *_259 = _halide_buffer_init(_250, _255, _hw_input, _256, _257, 1, 8, 2, _258, _256);
   struct halide_buffer_t * _hw_input_buffer = _259;
   // produce hw_input
   int32_t _260 = _16 + 2;
   for (int _hw_input_s0_y = _15; _hw_input_s0_y < _15 + _260; _hw_input_s0_y++)
   {
    int32_t _261 = _13 + 2;
    for (int _hw_input_s0_x = _12; _hw_input_s0_x < _12 + _261; _hw_input_s0_x++)
    {
     int32_t _262 = _hw_input_s0_y * _27;
     int32_t _263 = _hw_input_s0_x + _262;
     int32_t _264 = _25 * _27;
     int32_t _265 = _22 + _264;
     int32_t _266 = _263 - _265;
     uint8_t _267 = ((const uint8_t *)_p2_input)[_266];
     int32_t _268 = _hw_input_s0_x - _223;
     int32_t _269 = _hw_input_s0_y - _201;
     int32_t _270 = _242 - _223;
     int32_t _271 = _270 + 1;
     int32_t _272 = _269 * _271;
     int32_t _273 = _268 + _272;
     _hw_input[_273] = _267;
    } // for _hw_input_s0_x
   } // for _hw_input_s0_y
   // consume hw_input
   {
    int32_t _274 = max(_13, 1920);
    int64_t _275 = _274;
    int32_t _276 = max(_16, 1080);
    int64_t _277 = _275 * _276;
    if ((_277 > ((int64_t(1) << 31) - 1)) || ((_277 * sizeof(uint8_t )) > ((int64_t(1) << 31) - 1)))
    {
     halide_error(_ucon, "32-bit signed overflow computing size of allocation hw_output\n");
     return -1;
    } // overflow test hw_output
    int64_t _278 = _277;
    uint8_t *_hw_output = (uint8_t  *)halide_malloc(_ucon, sizeof(uint8_t )*_278);
    if (!_hw_output)
    {
     return halide_error_out_of_memory(_ucon);
    }
    HalideFreeHelper _hw_output_free(_ucon, _hw_output, halide_free);
    halide_buffer_t b2;
    struct halide_buffer_t *_279 = &b2;
    int32_t _280 = max(_13, 1920);
    int32_t _281 = max(_16, 1080);
    struct {
     const int32_t f_0;
     const int32_t f_1;
     const int32_t f_2;
     const int32_t f_3;
     const int32_t f_4;
     const int32_t f_5;
     const int32_t f_6;
     const int32_t f_7;
    } s4 = {
     _223,
     _280,
     1,
     0,
     _201,
     _281,
     _280,
     0
    };
    struct halide_dimension_t *_282 = (struct halide_dimension_t *)(&s4);
    uint64_t _283 = (uint64_t)(0);
    struct halide_device_interface_t *_284 = (struct halide_device_interface_t *)(_283);
    struct {
     const int32_t f_0;
     const int32_t f_1;
     const int32_t f_2;
     const int32_t f_3;
     const int32_t f_4;
     const int32_t f_5;
     const int32_t f_6;
     const int32_t f_7;
    } s5 = {
     _223,
     _280,
     1,
     0,
     _201,
     _281,
     _280,
     0
    };
    struct halide_dimension_t *_285 = (struct halide_dimension_t *)(&s5);
    struct halide_buffer_t *_286 = _halide_buffer_init(_279, _282, _hw_output, _283, _284, 1, 8, 2, _285, _283);
    struct halide_buffer_t * _hw_output_buffer = _286;
    // produce hw_output
    int32_t _287 = _16 + 1079;
    int32_t _288 = _287 / 1080;
    int32_t _289 = _288 * 1080;
    int32_t _290 = _287 - _289;
    int32_t _291 = _290 >> 31;
    int32_t _292 = 1080 >> 31;
    int32_t _293 = _291 & _292;
    int32_t _294 = _288 - _293;
    int32_t _295 = ~_292;
    int32_t _296 = _291 & _295;
    int32_t _297 = _294 + _296;
    for (int _hw_output_s0_y_yo = 0; _hw_output_s0_y_yo < 0 + _297; _hw_output_s0_y_yo++)
    {
     int32_t _298 = _hw_output_s0_y_yo * 1080;
     int32_t _299 = _298 + _15;
     int32_t _300 = _15 + _16;
     int32_t _301 = _300 + -1080;
     int32_t _302 = min(_299, _301);
     int32_t _303 = _13 + 1919;
     int32_t _304 = _303 / 1920;
     int32_t _305 = _304 * 1920;
     int32_t _306 = _303 - _305;
     int32_t _307 = _306 >> 31;
     int32_t _308 = 1920 >> 31;
     int32_t _309 = _307 & _308;
     int32_t _310 = _304 - _309;
     int32_t _311 = ~_308;
     int32_t _312 = _307 & _311;
     int32_t _313 = _310 + _312;
     for (int _hw_output_s0_x_xo = 0; _hw_output_s0_x_xo < 0 + _313; _hw_output_s0_x_xo++)
     {
      int32_t _314 = _hw_output_s0_x_xo * 1920;
      int32_t _315 = _314 + _12;
      int32_t _316 = _12 + _13;
      int32_t _317 = _316 + -1920;
      int32_t _318 = min(_315, _317);
      hls::stream<AxiPackedStencil<uint8_t, 4, 1> > _hw_input_stencil_update_stream;
      int32_t _319 = _318 - _223;
      int32_t _320 = _302 - _201;
      int32_t _321 = _242 - _223;
      int32_t _322 = _321 + 1;
      int32_t _323 = _320 * _322;
      int32_t _324 = _319 + _323;
      void *_325 = ((uint8_t *)_hw_input + _324);
      subimage_to_stream(_hw_input_buffer, _hw_input_stencil_update_stream, _325, 1, 1922, _322, 1082);
      (void)0;
      hls::stream<AxiPackedStencil<uint8_t, 4, 1> > _hw_output_stencil_stream;
      hls_target(_hw_input_stencil_update_stream, _hw_output_stencil_stream);
      int32_t _572 = max(_13, 1920);
      int32_t _573 = _320 * _572;
      int32_t _574 = _319 + _573;
      void *_575 = ((uint8_t *)_hw_output + _574);
      stream_to_subimage(_hw_output_buffer, _hw_output_stencil_stream, _575, 1, 1920, _572, 1080);
      (void)0;
     } // for _hw_output_s0_x_xo
    } // for _hw_output_s0_y_yo
    _hw_input_free.free();
    // consume hw_output
    // produce output
    for (int _output_s0_y = _15; _output_s0_y < _15 + _16; _output_s0_y++)
    {
     for (int _output_s0_x = _12; _output_s0_x < _12 + _13; _output_s0_x++)
     {
      int32_t _576 = _output_s0_x - _223;
      int32_t _577 = _output_s0_y - _201;
      int32_t _578 = max(_13, 1920);
      int32_t _579 = _577 * _578;
      int32_t _580 = _576 + _579;
      uint8_t _581 = _hw_output[_580];
      int32_t _582 = _output_s0_y * _17;
      int32_t _583 = _output_s0_x + _582;
      int32_t _584 = _15 * _17;
      int32_t _585 = _12 + _584;
      int32_t _586 = _583 - _585;
      ((uint8_t *)_output)[_586] = _581;
     } // for _output_s0_x
    } // for _output_s0_y
    _hw_output_free.free();
   } // alloc _hw_output
  } // alloc _hw_input
 } // if _47
 return 0;
}

int pipeline_hls_argv(void **args) HALIDE_FUNCTION_ATTRS {
 halide_buffer_t* _p2_input = ((halide_buffer_t*) args[0]);
 halide_buffer_t* _output = ((halide_buffer_t*) args[1]);
 return pipeline_hls(_p2_input, _output);
} // argv function
int pipeline_hls(struct buffer_t *_p2_input, struct buffer_t *_output) HALIDE_FUNCTION_ATTRS {
 void * const _ucon = nullptr;
 struct {
  const int32_t f_0;
  const int32_t f_1;
  const int32_t f_2;
  const int32_t f_3;
  const int32_t f_4;
  const int32_t f_5;
  const int32_t f_6;
  const int32_t f_7;
 } s6 = {
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
 };
 struct halide_dimension_t *_587 = (struct halide_dimension_t *)(&s6);
 struct halide_dimension_t * _t351 = _587;
 halide_buffer_t b3;
 struct halide_buffer_t *_588 = &b3;
 uint64_t _589 = (uint64_t)(0);
 void *_590 = (void *)(_589);
 struct halide_device_interface_t *_591 = (struct halide_device_interface_t *)(_589);
 struct halide_buffer_t *_592 = _halide_buffer_init(_588, _t351, _590, _589, _591, 1, 8, 2, _t351, _589);
 struct halide_buffer_t * _p2_input_upgraded = _592;
 struct {
  const int32_t f_0;
  const int32_t f_1;
  const int32_t f_2;
  const int32_t f_3;
  const int32_t f_4;
  const int32_t f_5;
  const int32_t f_6;
  const int32_t f_7;
 } s7 = {
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
 };
 struct halide_dimension_t *_593 = (struct halide_dimension_t *)(&s7);
 struct halide_dimension_t * _t355 = _593;
 halide_buffer_t b4;
 struct halide_buffer_t *_594 = &b4;
 struct halide_buffer_t *_595 = _halide_buffer_init(_594, _t355, _590, _589, _591, 1, 8, 2, _t355, _589);
 struct halide_buffer_t * _output_upgraded = _595;
 int32_t _596 = halide_upgrade_buffer_t(_ucon, "p2:input", _p2_input, _p2_input_upgraded);
 bool _597 = _596 == 0;
 if (!_597)  {
  return _596;
 }
 int32_t _598 = halide_upgrade_buffer_t(_ucon, "output", _output, _output_upgraded);
 bool _599 = _598 == 0;
 if (!_599)  {
  return _598;
 }
 int32_t _600 = pipeline_hls(_p2_input_upgraded, _output_upgraded);
 bool _601 = _600 == 0;
 if (!_601)  {
  return _600;
 }
 bool _602 = _halide_buffer_is_bounds_query(_p2_input_upgraded);
 if (_602)
 {
  int32_t _603 = halide_downgrade_buffer_t(_ucon, "p2:input", _p2_input_upgraded, _p2_input);
  bool _604 = _603 == 0;
  if (!_604)   {
   return _603;
  }
 } // if _602
 else
 {
  int32_t _605 = halide_downgrade_buffer_t_device_fields(_ucon, "p2:input", _p2_input_upgraded, _p2_input);
  bool _606 = _605 == 0;
  if (!_606)   {
   return _605;
  }
 } // if _602 else
 bool _607 = _halide_buffer_is_bounds_query(_output_upgraded);
 if (_607)
 {
  int32_t _608 = halide_downgrade_buffer_t(_ucon, "output", _output_upgraded, _output);
  bool _609 = _608 == 0;
  if (!_609)   {
   return _608;
  }
 } // if _607
 else
 {
  int32_t _610 = halide_downgrade_buffer_t_device_fields(_ucon, "output", _output_upgraded, _output);
  bool _611 = _610 == 0;
  if (!_611)   {
   return _610;
  }
 } // if _607 else
 return 0;
}