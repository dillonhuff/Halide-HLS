<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="14">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>hls_target</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>hw_input_V_value_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>hw_input.V.value.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>hw_input_V_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>hw_input.V.last.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>hw_output_V_value_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>hw_output.V.value.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>hw_output_V_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>hw_output.V.last.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>11</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>p_hw_input_stencil_st</name>
						<fileName>hls_target.cpp</fileName>
						<fileDirectory>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</fileDirectory>
						<lineNumber>52</lineNumber>
						<contextFuncName>hls_target</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>hls_target.cpp</first>
											<second>hls_target</second>
										</first>
										<second>52</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>_hw_input_stencil_stream.V.value.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>72</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>41</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>p_hw_input_stencil_st_3</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>72</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>42</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>p_hw_input_stencil_st_4</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>72</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>43</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>p_delayed_input_stenc</name>
						<fileName>hls_target.cpp</fileName>
						<fileDirectory>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</fileDirectory>
						<lineNumber>82</lineNumber>
						<contextFuncName>hls_target</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_target.cpp</first>
											<second>hls_target</second>
										</first>
										<second>82</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>_delayed_input_stencil_stream.V.value.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>44</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name>p_mul_stencil_stream_s</name>
						<fileName>hls_target.cpp</fileName>
						<fileDirectory>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</fileDirectory>
						<lineNumber>190</lineNumber>
						<contextFuncName>hls_target</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_target.cpp</first>
											<second>hls_target</second>
										</first>
										<second>190</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>_mul_stencil_stream.V.value.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO_SRL</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>45</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>33</id>
						<name></name>
						<fileName>hls_target.cpp</fileName>
						<fileDirectory>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</fileDirectory>
						<lineNumber>56</lineNumber>
						<contextFuncName>hls_target</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_target.cpp</first>
											<second>hls_target</second>
										</first>
										<second>56</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>47</item>
					<item>48</item>
					<item>49</item>
					<item>50</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>34</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>6</count>
					<item_version>0</item_version>
					<item>52</item>
					<item>53</item>
					<item>54</item>
					<item>55</item>
					<item>329</item>
					<item>330</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>35</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>57</item>
					<item>58</item>
					<item>59</item>
					<item>327</item>
					<item>331</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>36</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>61</item>
					<item>62</item>
					<item>63</item>
					<item>328</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>37</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>65</item>
					<item>66</item>
					<item>67</item>
					<item>68</item>
					<item>69</item>
					<item>325</item>
					<item>326</item>
					<item>332</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>38</id>
						<name></name>
						<fileName>hls_target.cpp</fileName>
						<fileDirectory>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</fileDirectory>
						<lineNumber>343</lineNumber>
						<contextFuncName>hls_target</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>hls_target.cpp</first>
											<second>hls_target</second>
										</first>
										<second>343</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_16">
				<Value>
					<Obj>
						<type>2</type>
						<id>40</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_17">
				<Value>
					<Obj>
						<type>2</type>
						<id>46</id>
						<name>linebuffer_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:linebuffer.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_18">
				<Value>
					<Obj>
						<type>2</type>
						<id>51</id>
						<name>Loop_1_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_1_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>56</id>
						<name>Loop_2_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_2_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>60</id>
						<name>Loop_3_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_3_proc&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_21">
				<Value>
					<Obj>
						<type>2</type>
						<id>64</id>
						<name>Loop_4_proc</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Loop_4_proc&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_22">
				<Obj>
					<type>3</type>
					<id>39</id>
					<name>hls_target</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>11</count>
					<item_version>0</item_version>
					<item>11</item>
					<item>15</item>
					<item>19</item>
					<item>23</item>
					<item>27</item>
					<item>33</item>
					<item>34</item>
					<item>35</item>
					<item>36</item>
					<item>37</item>
					<item>38</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>32</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_23">
				<id>41</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>43</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>44</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>23</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>45</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>27</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>47</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>33</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>48</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>33</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>49</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>33</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>50</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>33</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>52</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>54</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>55</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>57</id>
				<edge_type>1</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>35</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>58</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>35</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>59</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>35</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>36</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>62</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>36</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>36</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>325</id>
				<edge_type>4</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>326</id>
				<edge_type>4</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>327</id>
				<edge_type>4</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>35</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>328</id>
				<edge_type>4</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>36</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>329</id>
				<edge_type>4</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>330</id>
				<edge_type>4</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>331</id>
				<edge_type>4</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>35</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>332</id>
				<edge_type>4</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>37</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_55">
			<mId>1</mId>
			<mTag>hls_target</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>39</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>2077921</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_56">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_57">
						<type>0</type>
						<name>linebuffer_1_U0</name>
						<ssdmobj_id>33</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>3</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_58">
								<port class_id="29" tracking_level="1" version="0" object_id="_59">
									<name>in_axi_stream_V_value_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_60">
									<type>0</type>
									<name>linebuffer_1_U0</name>
									<ssdmobj_id>33</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_61">
								<port class_id_reference="29" object_id="_62">
									<name>in_axi_stream_V_last_V</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_60"></inst>
							</item>
							<item class_id_reference="28" object_id="_63">
								<port class_id_reference="29" object_id="_64">
									<name>out_stream_V_value_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_60"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_65">
						<type>0</type>
						<name>Loop_1_proc_U0</name>
						<ssdmobj_id>34</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_66">
								<port class_id_reference="29" object_id="_67">
									<name>p_hw_input_stencil_stream_V_value_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_68">
									<type>0</type>
									<name>Loop_1_proc_U0</name>
									<ssdmobj_id>34</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_69">
								<port class_id_reference="29" object_id="_70">
									<name>p_hw_input_stencil_stream_to_delayed_input_V_value_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
							<item class_id_reference="28" object_id="_71">
								<port class_id_reference="29" object_id="_72">
									<name>p_hw_input_stencil_stream_to_mul_V_value_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_73">
						<type>0</type>
						<name>Loop_2_proc_U0</name>
						<ssdmobj_id>35</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_74">
								<port class_id_reference="29" object_id="_75">
									<name>p_hw_input_stencil_stream_to_delayed_input_V_value_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_76">
									<type>0</type>
									<name>Loop_2_proc_U0</name>
									<ssdmobj_id>35</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_77">
								<port class_id_reference="29" object_id="_78">
									<name>p_delayed_input_stencil_stream_V_value_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_76"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_79">
						<type>0</type>
						<name>Loop_3_proc_U0</name>
						<ssdmobj_id>36</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_80">
								<port class_id_reference="29" object_id="_81">
									<name>p_hw_input_stencil_stream_to_mul_V_value_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_82">
									<type>0</type>
									<name>Loop_3_proc_U0</name>
									<ssdmobj_id>36</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_83">
								<port class_id_reference="29" object_id="_84">
									<name>p_mul_stencil_stream_V_value_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_82"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_85">
						<type>0</type>
						<name>Loop_4_proc_U0</name>
						<ssdmobj_id>37</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_86">
								<port class_id_reference="29" object_id="_87">
									<name>hw_output_V_value_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_88">
									<type>0</type>
									<name>Loop_4_proc_U0</name>
									<ssdmobj_id>37</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_89">
								<port class_id_reference="29" object_id="_90">
									<name>hw_output_V_last_V</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_88"></inst>
							</item>
							<item class_id_reference="28" object_id="_91">
								<port class_id_reference="29" object_id="_92">
									<name>p_mul_stencil_stream_V_value_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_88"></inst>
							</item>
							<item class_id_reference="28" object_id="_93">
								<port class_id_reference="29" object_id="_94">
									<name>p_delayed_input_stencil_stream_V_value_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_88"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>5</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_95">
						<type>1</type>
						<name>p_hw_input_stencil_st</name>
						<ssdmobj_id>11</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>72</bitwidth>
						<source class_id_reference="28" object_id="_96">
							<port class_id_reference="29" object_id="_97">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_60"></inst>
						</source>
						<sink class_id_reference="28" object_id="_98">
							<port class_id_reference="29" object_id="_99">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_100">
						<type>1</type>
						<name>p_hw_input_stencil_st_3</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>72</bitwidth>
						<source class_id_reference="28" object_id="_101">
							<port class_id_reference="29" object_id="_102">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</source>
						<sink class_id_reference="28" object_id="_103">
							<port class_id_reference="29" object_id="_104">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_76"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_105">
						<type>1</type>
						<name>p_hw_input_stencil_st_4</name>
						<ssdmobj_id>19</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>72</bitwidth>
						<source class_id_reference="28" object_id="_106">
							<port class_id_reference="29" object_id="_107">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</source>
						<sink class_id_reference="28" object_id="_108">
							<port class_id_reference="29" object_id="_109">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_82"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_110">
						<type>1</type>
						<name>p_delayed_input_stenc</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_111">
							<port class_id_reference="29" object_id="_112">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_76"></inst>
						</source>
						<sink class_id_reference="28" object_id="_113">
							<port class_id_reference="29" object_id="_114">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_88"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_115">
						<type>1</type>
						<name>p_mul_stencil_stream_s</name>
						<ssdmobj_id>27</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_116">
							<port class_id_reference="29" object_id="_117">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_82"></inst>
						</source>
						<sink class_id_reference="28" object_id="_118">
							<port class_id_reference="29" object_id="_119">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_88"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_120">
		<states class_id="35" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_121">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_122">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_123">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_124">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_125">
						<id>23</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_126">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_127">
						<id>33</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_128">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_129">
						<id>33</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_130">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_131">
						<id>34</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_132">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_133">
						<id>34</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_134">
				<id>5</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_135">
						<id>35</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_136">
						<id>36</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_137">
				<id>6</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_138">
						<id>35</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_139">
						<id>36</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_140">
				<id>7</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_141">
						<id>37</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_142">
				<id>8</id>
				<operations>
					<count>25</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_143">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_144">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_145">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_146">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_147">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_148">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_149">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_150">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_151">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_152">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_153">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_154">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_155">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_156">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_157">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_158">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_159">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_160">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_161">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_162">
						<id>29</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_163">
						<id>30</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_164">
						<id>31</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_165">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_166">
						<id>37</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_167">
						<id>38</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_168">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>0</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_169">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_170">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>2</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_171">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_172">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>4</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_173">
				<inState>6</inState>
				<outState>7</outState>
				<condition>
					<id>5</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_174">
				<inState>7</inState>
				<outState>8</outState>
				<condition>
					<id>6</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>11</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>11</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>33</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>35</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>36</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>38</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>39</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>7</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_175">
			<region_name>hls_target</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>39</item>
			</basic_blocks>
			<nodes>
				<count>34</count>
				<item_version>0</item_version>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>10</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>62</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>66</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>70</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>74</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>78</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>27</item>
			</second>
		</item>
		<item>
			<first>82</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>33</item>
				<item>33</item>
			</second>
		</item>
		<item>
			<first>91</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>37</item>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>101</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>36</item>
				<item>36</item>
			</second>
		</item>
		<item>
			<first>107</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>35</item>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>113</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>34</item>
				<item>34</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>p_delayed_input_stenc_fu_74</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>p_hw_input_stencil_st_3_fu_66</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>p_hw_input_stencil_st_4_fu_70</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>p_hw_input_stencil_st_fu_62</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>p_mul_stencil_stream_s_fu_78</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>27</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>5</count>
		<item_version>0</item_version>
		<item>
			<first>grp_Loop_1_proc_fu_113</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>34</item>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>grp_Loop_2_proc_fu_107</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>35</item>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>grp_Loop_3_proc_fu_101</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>36</item>
				<item>36</item>
			</second>
		</item>
		<item>
			<first>grp_Loop_4_proc_fu_91</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>37</item>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>grp_linebuffer_1_fu_82</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>33</item>
				<item>33</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>5</count>
		<item_version>0</item_version>
		<item>
			<first>120</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>126</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>132</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>138</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>144</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>27</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>5</count>
		<item_version>0</item_version>
		<item>
			<first>p_delayed_input_stenc_reg_138</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>p_hw_input_stencil_st_3_reg_126</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>p_hw_input_stencil_st_4_reg_132</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</second>
		</item>
		<item>
			<first>p_hw_input_stencil_st_reg_120</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>p_mul_stencil_stream_s_reg_144</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>27</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="59" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="60" tracking_level="0" version="0">
			<first>hw_input_V_last_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>33</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>hw_input_V_value_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>33</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>hw_output_V_last_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>37</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>hw_output_V_value_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>37</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="61" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>11</first>
			<second>FIFO_SRL</second>
		</item>
		<item>
			<first>15</first>
			<second>FIFO_SRL</second>
		</item>
		<item>
			<first>19</first>
			<second>FIFO_SRL</second>
		</item>
		<item>
			<first>23</first>
			<second>FIFO_SRL</second>
		</item>
		<item>
			<first>27</first>
			<second>FIFO_SRL</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

