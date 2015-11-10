<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="NI-cRIO9024-CSE1" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">NI-cRIO9024-CSE1</Property>
		<Property Name="alias.value" Type="Str">192.168.0.77</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,VxWorks;CPU,PowerPC;DeviceCode,7459;</Property>
		<Property Name="crio.ControllerPID" Type="Str">7459</Property>
		<Property Name="crio.family" Type="Str">901x</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">2</Property>
		<Property Name="host.TargetOSID" Type="UInt">14</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9113</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{0315DFE2-186F-4072-BDD0-9CA299B1FB9E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO2;0;ReadMethodType=bool;WriteMethodType=bool{186BA8F8-0204-4A84-AF0A-5E03508448FA}"ControlLogic=0;NumberOfElements=15;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_READ;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{1E5B3150-41BF-4AD6-994D-C469EAB21077}resource=/crio_NI 9237/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{2DAA2A5E-2EF6-4C9F-96DD-60FCA9FD7650}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{2E263320-16FC-44D8-A3A7-E59EC1929AFE}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO3;0;ReadMethodType=bool;WriteMethodType=bool{3239FC0B-0392-4EC8-8556-C4BDA939E62D}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9474,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{344D0C0A-4A35-42B0-A3BA-617A9639208F}"ControlLogic=0;NumberOfElements=21;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_WRITE;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{34C44D3C-813F-4CE4-B4A2-7655909FDE03}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9237,cRIOModule.ClockSource=0,cRIOModule.DataRate=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.ExcitationVoltage=1,cRIOModule.ExternalClockSource=,cRIOModule.ExtTimeBaseType=,cRIOModule.HalfBridgeEnable=0,cRIOModule.InputConfiguration=0,cRIOModule.RsiAttributes=,cRIOModule.SourceModule=false,cRIOModule.SubPanVisitedVersion=0,cRIOModule.TEDSSupport=true[crioConfig.End]{35D39807-57C8-4FC3-BFC1-93E263DE2A6E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO4;0;ReadMethodType=bool;WriteMethodType=bool{3CF201E2-6D3D-465F-A727-6D8997BFBFDD}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E{3EADE592-A568-4214-A5BF-CCF26DEF3F1E}resource=/crio_NI 9215/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{473B7F53-1287-4260-B030-413E54C3177F}resource=/crio_NI 9263/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4BC3579C-F724-49B3-8329-C03207DA6504}resource=/Chassis Temperature;0;ReadMethodType=i16{527A3C3F-C6D3-47B7-A749-CBA0BDF5EA66}resource=/crio_NI 9237/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{5967B130-DFA0-44D6-98C6-91898C6A2208}resource=/crio_NI 9215/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{6B32890F-92B5-4A88-8C89-090661779F04}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{74CC5168-E7F7-4A1B-879D-4A9D57EB3E56}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]{762DEB2A-06BF-434D-9EE2-94A26B8C9210}resource=/crio_NI 9237/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{781BDF49-938D-45EA-B9DC-98A5900469FA}resource=/crio_NI 9237/Start;0;WriteMethodType=bool{85DA68E2-0821-422D-A402-9C5F20BF0234}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8{92DF1D5E-98A5-46ED-87A8-AD8A90D401CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO1;0;ReadMethodType=bool;WriteMethodType=bool{95C8C04D-50C0-4526-AFCC-E7CAA5E74C16}resource=/crio_NI 9237/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{979A7056-0FB3-4484-8FF6-3ED58D925408}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO5;0;ReadMethodType=bool;WriteMethodType=bool{9B6379D6-3FF1-41B9-BF8B-8CEC4B67F2F5}resource=/crio_NI 9263/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{9C2AE4DF-DD30-42BE-94EF-3CCA728FD55C}resource=/Scan Clock;0;ReadMethodType=bool{9D1F41FE-F89A-438D-A84A-F1C2017B8595}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO6;0;ReadMethodType=bool;WriteMethodType=bool{A4C5F089-A453-4F16-A440-FBB2A977448B}resource=/crio_NI 9237/Stop;0;WriteMethodType=bool{BDBBF0BE-F78E-4597-81FA-2F0C91ADA2B3}resource=/crio_NI 9263/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{CF0B46E7-A8F4-46CA-B395-5E2F7EB75ADA}resource=/crio_NI 9215/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{D827A3B7-0BE4-42CE-A816-CC93944A30EE}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{E1B64909-9E6E-48C7-A87C-1CD8BEB9551F}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7;0;ReadMethodType=bool;WriteMethodType=bool{F403D1E2-A13D-4553-A334-4ECD381277D7}resource=/crio_NI 9215/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{F83C1EA7-F677-437D-A8E4-805E0ECA8D31}resource=/crio_NI 9263/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{FB1CCED6-0DB8-46EE-BF04-EC459607163B}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO0;0;ReadMethodType=bool;WriteMethodType=bool{FD8A1AF7-E988-40C2-9D14-99A469CEAD55}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9215,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]cRIO-9113/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9113FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427EChassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9113/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9113FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]DMA_READ"ControlLogic=0;NumberOfElements=15;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_READ;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"DMA_WRITE"ControlLogic=0;NumberOfElements=21;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_WRITE;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolNI 9215/AI0resource=/crio_NI 9215/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215/AI1resource=/crio_NI 9215/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215/AI2resource=/crio_NI 9215/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215/AI3resource=/crio_NI 9215/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9215,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]NI 9237/AI0resource=/crio_NI 9237/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/AI1resource=/crio_NI 9237/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/AI2resource=/crio_NI 9237/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/AI3resource=/crio_NI 9237/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/Startresource=/crio_NI 9237/Start;0;WriteMethodType=boolNI 9237/Stopresource=/crio_NI 9237/Stop;0;WriteMethodType=boolNI 9237[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9237,cRIOModule.ClockSource=0,cRIOModule.DataRate=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.ExcitationVoltage=1,cRIOModule.ExternalClockSource=,cRIOModule.ExtTimeBaseType=,cRIOModule.HalfBridgeEnable=0,cRIOModule.InputConfiguration=0,cRIOModule.RsiAttributes=,cRIOModule.SourceModule=false,cRIOModule.SubPanVisitedVersion=0,cRIOModule.TEDSSupport=true[crioConfig.End]NI 9263/AO0resource=/crio_NI 9263/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263/AO1resource=/crio_NI 9263/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263/AO2resource=/crio_NI 9263/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263/AO3resource=/crio_NI 9263/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]NI 9474/DO0ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO0;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO1ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO1;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO2ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO2;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO3ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO3;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO4ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO4;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO5ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO5;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO6ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO6;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO7:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8NI 9474/DO7ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7;0;ReadMethodType=bool;WriteMethodType=boolNI 9474[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9474,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9113/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9113FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9113</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4BC3579C-F724-49B3-8329-C03207DA6504}</Property>
					</Item>
					<Item Name="FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D827A3B7-0BE4-42CE-A816-CC93944A30EE}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9C2AE4DF-DD30-42BE-94EF-3CCA728FD55C}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2DAA2A5E-2EF6-4C9F-96DD-60FCA9FD7650}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6B32890F-92B5-4A88-8C89-090661779F04}</Property>
					</Item>
				</Item>
				<Item Name="NI 9215" Type="Folder">
					<Item Name="NI 9215/AI0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9215/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5967B130-DFA0-44D6-98C6-91898C6A2208}</Property>
					</Item>
					<Item Name="NI 9215/AI1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9215/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F403D1E2-A13D-4553-A334-4ECD381277D7}</Property>
					</Item>
					<Item Name="NI 9215/AI2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9215/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CF0B46E7-A8F4-46CA-B395-5E2F7EB75ADA}</Property>
					</Item>
					<Item Name="NI 9215/AI3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9215/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{3EADE592-A568-4214-A5BF-CCF26DEF3F1E}</Property>
					</Item>
				</Item>
				<Item Name="NI 9237" Type="Folder">
					<Item Name="NI 9237/AI0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9237/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{527A3C3F-C6D3-47B7-A749-CBA0BDF5EA66}</Property>
					</Item>
					<Item Name="NI 9237/AI1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9237/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{95C8C04D-50C0-4526-AFCC-E7CAA5E74C16}</Property>
					</Item>
					<Item Name="NI 9237/AI2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9237/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1E5B3150-41BF-4AD6-994D-C469EAB21077}</Property>
					</Item>
					<Item Name="NI 9237/AI3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9237/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{762DEB2A-06BF-434D-9EE2-94A26B8C9210}</Property>
					</Item>
					<Item Name="NI 9237/Start" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9237/Start</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{781BDF49-938D-45EA-B9DC-98A5900469FA}</Property>
					</Item>
					<Item Name="NI 9237/Stop" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9237/Stop</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A4C5F089-A453-4F16-A440-FBB2A977448B}</Property>
					</Item>
				</Item>
				<Item Name="NI 9263" Type="Folder">
					<Item Name="NI 9263/AO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9263/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F83C1EA7-F677-437D-A8E4-805E0ECA8D31}</Property>
					</Item>
					<Item Name="NI 9263/AO1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9263/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BDBBF0BE-F78E-4597-81FA-2F0C91ADA2B3}</Property>
					</Item>
					<Item Name="NI 9263/AO2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9263/AO2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9B6379D6-3FF1-41B9-BF8B-8CEC4B67F2F5}</Property>
					</Item>
					<Item Name="NI 9263/AO3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_NI 9263/AO3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{473B7F53-1287-4260-B030-413E54C3177F}</Property>
					</Item>
				</Item>
				<Item Name="NI 9474" Type="Folder">
					<Item Name="NI 9474/DO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{FB1CCED6-0DB8-46EE-BF04-EC459607163B}</Property>
					</Item>
					<Item Name="NI 9474/DO1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{92DF1D5E-98A5-46ED-87A8-AD8A90D401CC}</Property>
					</Item>
					<Item Name="NI 9474/DO2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0315DFE2-186F-4072-BDD0-9CA299B1FB9E}</Property>
					</Item>
					<Item Name="NI 9474/DO3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2E263320-16FC-44D8-A3A7-E59EC1929AFE}</Property>
					</Item>
					<Item Name="NI 9474/DO4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{35D39807-57C8-4FC3-BFC1-93E263DE2A6E}</Property>
					</Item>
					<Item Name="NI 9474/DO5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{979A7056-0FB3-4484-8FF6-3ED58D925408}</Property>
					</Item>
					<Item Name="NI 9474/DO6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9D1F41FE-F89A-438D-A84A-F1C2017B8595}</Property>
					</Item>
					<Item Name="NI 9474/DO7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E1B64909-9E6E-48C7-A87C-1CD8BEB9551F}</Property>
					</Item>
					<Item Name="NI 9474/DO7:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_NI 9474/DO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{85DA68E2-0821-422D-A402-9C5F20BF0234}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{3CF201E2-6D3D-465F-A727-6D8997BFBFDD}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="cRIO-9113 Tupac.fpgaconfig" Type="Document" URL="../../2014-06-20/tupac x32/cRIO-9113 Tupac.fpgaconfig"/>
				<Item Name="DMA_READ" Type="FPGA FIFO">
					<Property Name="Actual Number of Elements" Type="UInt">15</Property>
					<Property Name="Arbitration for Read" Type="UInt">1</Property>
					<Property Name="Arbitration for Write" Type="UInt">1</Property>
					<Property Name="Control Logic" Type="UInt">0</Property>
					<Property Name="Data Type" Type="UInt">8</Property>
					<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
					<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=15;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_READ;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="fifo.configured" Type="Bool">true</Property>
					<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
					<Property Name="fifo.valid" Type="Bool">true</Property>
					<Property Name="fifo.version" Type="Int">12</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{186BA8F8-0204-4A84-AF0A-5E03508448FA}</Property>
					<Property Name="Local" Type="Bool">false</Property>
					<Property Name="Memory Type" Type="UInt">2</Property>
					<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
					<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
					<Property Name="Requested Number of Elements" Type="UInt">15</Property>
					<Property Name="Type" Type="UInt">2</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094008000355363400010000000000000000000000000000</Property>
					<Property Name="Visible" Type="Bool">true</Property>
				</Item>
				<Item Name="DMA_WRITE" Type="FPGA FIFO">
					<Property Name="Actual Number of Elements" Type="UInt">21</Property>
					<Property Name="Arbitration for Read" Type="UInt">1</Property>
					<Property Name="Arbitration for Write" Type="UInt">1</Property>
					<Property Name="Control Logic" Type="UInt">0</Property>
					<Property Name="Data Type" Type="UInt">8</Property>
					<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
					<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=21;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_WRITE;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
					<Property Name="fifo.configured" Type="Bool">true</Property>
					<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
					<Property Name="fifo.valid" Type="Bool">true</Property>
					<Property Name="fifo.version" Type="Int">12</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{344D0C0A-4A35-42B0-A3BA-617A9639208F}</Property>
					<Property Name="Local" Type="Bool">false</Property>
					<Property Name="Memory Type" Type="UInt">2</Property>
					<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
					<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
					<Property Name="Requested Number of Elements" Type="UInt">21</Property>
					<Property Name="Type" Type="UInt">1</Property>
					<Property Name="Type Descriptor" Type="Str">100080000000000100094008000355363400010000000000000000000000000000</Property>
					<Property Name="Visible" Type="Bool">true</Property>
				</Item>
				<Item Name="FPGA IO mapping.vi" Type="VI" URL="../FPGA IO mapping.vi">
					<Property Name="BuildSpec" Type="Str">{B3E0EF3C-1A7B-498D-9087-CE12B9B3D758}</Property>
					<Property Name="configString.guid" Type="Str">{0315DFE2-186F-4072-BDD0-9CA299B1FB9E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO2;0;ReadMethodType=bool;WriteMethodType=bool{186BA8F8-0204-4A84-AF0A-5E03508448FA}"ControlLogic=0;NumberOfElements=15;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_READ;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{1E5B3150-41BF-4AD6-994D-C469EAB21077}resource=/crio_NI 9237/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{2DAA2A5E-2EF6-4C9F-96DD-60FCA9FD7650}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{2E263320-16FC-44D8-A3A7-E59EC1929AFE}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO3;0;ReadMethodType=bool;WriteMethodType=bool{3239FC0B-0392-4EC8-8556-C4BDA939E62D}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9474,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{344D0C0A-4A35-42B0-A3BA-617A9639208F}"ControlLogic=0;NumberOfElements=21;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_WRITE;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{34C44D3C-813F-4CE4-B4A2-7655909FDE03}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9237,cRIOModule.ClockSource=0,cRIOModule.DataRate=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.ExcitationVoltage=1,cRIOModule.ExternalClockSource=,cRIOModule.ExtTimeBaseType=,cRIOModule.HalfBridgeEnable=0,cRIOModule.InputConfiguration=0,cRIOModule.RsiAttributes=,cRIOModule.SourceModule=false,cRIOModule.SubPanVisitedVersion=0,cRIOModule.TEDSSupport=true[crioConfig.End]{35D39807-57C8-4FC3-BFC1-93E263DE2A6E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO4;0;ReadMethodType=bool;WriteMethodType=bool{3CF201E2-6D3D-465F-A727-6D8997BFBFDD}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E{3EADE592-A568-4214-A5BF-CCF26DEF3F1E}resource=/crio_NI 9215/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{473B7F53-1287-4260-B030-413E54C3177F}resource=/crio_NI 9263/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4BC3579C-F724-49B3-8329-C03207DA6504}resource=/Chassis Temperature;0;ReadMethodType=i16{527A3C3F-C6D3-47B7-A749-CBA0BDF5EA66}resource=/crio_NI 9237/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{5967B130-DFA0-44D6-98C6-91898C6A2208}resource=/crio_NI 9215/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{6B32890F-92B5-4A88-8C89-090661779F04}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{74CC5168-E7F7-4A1B-879D-4A9D57EB3E56}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]{762DEB2A-06BF-434D-9EE2-94A26B8C9210}resource=/crio_NI 9237/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{781BDF49-938D-45EA-B9DC-98A5900469FA}resource=/crio_NI 9237/Start;0;WriteMethodType=bool{85DA68E2-0821-422D-A402-9C5F20BF0234}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8{92DF1D5E-98A5-46ED-87A8-AD8A90D401CC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO1;0;ReadMethodType=bool;WriteMethodType=bool{95C8C04D-50C0-4526-AFCC-E7CAA5E74C16}resource=/crio_NI 9237/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctl{979A7056-0FB3-4484-8FF6-3ED58D925408}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO5;0;ReadMethodType=bool;WriteMethodType=bool{9B6379D6-3FF1-41B9-BF8B-8CEC4B67F2F5}resource=/crio_NI 9263/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{9C2AE4DF-DD30-42BE-94EF-3CCA728FD55C}resource=/Scan Clock;0;ReadMethodType=bool{9D1F41FE-F89A-438D-A84A-F1C2017B8595}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO6;0;ReadMethodType=bool;WriteMethodType=bool{A4C5F089-A453-4F16-A440-FBB2A977448B}resource=/crio_NI 9237/Stop;0;WriteMethodType=bool{BDBBF0BE-F78E-4597-81FA-2F0C91ADA2B3}resource=/crio_NI 9263/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{CF0B46E7-A8F4-46CA-B395-5E2F7EB75ADA}resource=/crio_NI 9215/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{D827A3B7-0BE4-42CE-A816-CC93944A30EE}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{E1B64909-9E6E-48C7-A87C-1CD8BEB9551F}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7;0;ReadMethodType=bool;WriteMethodType=bool{F403D1E2-A13D-4553-A334-4ECD381277D7}resource=/crio_NI 9215/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{F83C1EA7-F677-437D-A8E4-805E0ECA8D31}resource=/crio_NI 9263/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{FB1CCED6-0DB8-46EE-BF04-EC459607163B}ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO0;0;ReadMethodType=bool;WriteMethodType=bool{FD8A1AF7-E988-40C2-9D14-99A469CEAD55}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9215,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]cRIO-9113/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9113FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427EChassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9113/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9113FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]DMA_READ"ControlLogic=0;NumberOfElements=15;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_READ;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"DMA_WRITE"ControlLogic=0;NumberOfElements=21;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;DMA_WRITE;DataType=100080000000000100094008000355363400010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"FPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolNI 9215/AI0resource=/crio_NI 9215/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215/AI1resource=/crio_NI 9215/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215/AI2resource=/crio_NI 9215/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215/AI3resource=/crio_NI 9215/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9215[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=NI 9215,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]NI 9237/AI0resource=/crio_NI 9237/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/AI1resource=/crio_NI 9237/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/AI2resource=/crio_NI 9237/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/AI3resource=/crio_NI 9237/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_24_neg4.ctlNI 9237/Startresource=/crio_NI 9237/Start;0;WriteMethodType=boolNI 9237/Stopresource=/crio_NI 9237/Stop;0;WriteMethodType=boolNI 9237[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9237,cRIOModule.ClockSource=0,cRIOModule.DataRate=1,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.ExcitationVoltage=1,cRIOModule.ExternalClockSource=,cRIOModule.ExtTimeBaseType=,cRIOModule.HalfBridgeEnable=0,cRIOModule.InputConfiguration=0,cRIOModule.RsiAttributes=,cRIOModule.SourceModule=false,cRIOModule.SubPanVisitedVersion=0,cRIOModule.TEDSSupport=true[crioConfig.End]NI 9263/AO0resource=/crio_NI 9263/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263/AO1resource=/crio_NI 9263/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263/AO2resource=/crio_NI 9263/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263/AO3resource=/crio_NI 9263/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlNI 9263[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 2,crio.Type=NI 9263,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]NI 9474/DO0ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO0;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO1ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO1;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO2ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO2;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO3ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO3;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO4ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO4;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO5ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO5;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO6ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO6;0;ReadMethodType=bool;WriteMethodType=boolNI 9474/DO7:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7:0;0;ReadMethodType=u8;WriteMethodType=u8NI 9474/DO7ArbitrationForOutputData=NeverArbitrate;resource=/crio_NI 9474/DO7;0;ReadMethodType=bool;WriteMethodType=boolNI 9474[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9474,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\mclab\Dropbox\TMR4243 - LAB\04 cRIO software\FPGA IO\bitfiles\cRIO-9113 Tupac.lvbitx</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="NI 9215" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 1</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9215</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{FD8A1AF7-E988-40C2-9D14-99A469CEAD55}</Property>
				</Item>
				<Item Name="NI 9237" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 3</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">true</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">true</Property>
					<Property Name="crio.Type" Type="Str">NI 9237</Property>
					<Property Name="cRIOModule.ClockSource" Type="Str">0</Property>
					<Property Name="cRIOModule.DataRate" Type="Str">1</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.ExcitationVoltage" Type="Str">1</Property>
					<Property Name="cRIOModule.ExternalClockSource" Type="Str"></Property>
					<Property Name="cRIOModule.ExtTimeBaseType" Type="Str"></Property>
					<Property Name="cRIOModule.HalfBridgeEnable" Type="Str">0</Property>
					<Property Name="cRIOModule.InputConfiguration" Type="Str">0</Property>
					<Property Name="cRIOModule.SourceModule" Type="Str">false</Property>
					<Property Name="cRIOModule.SubPanVisitedVersion" Type="Str">0</Property>
					<Property Name="cRIOModule.TEDSSupport" Type="Str">true</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{34C44D3C-813F-4CE4-B4A2-7655909FDE03}</Property>
				</Item>
				<Item Name="NI 9263" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 2</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9263</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.HotSwapMode" Type="Str">0</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{74CC5168-E7F7-4A1B-879D-4A9D57EB3E56}</Property>
				</Item>
				<Item Name="NI 9474" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 4</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9474</Property>
					<Property Name="cRIOModule.DIO3_0InitialDir" Type="Str">0</Property>
					<Property Name="cRIOModule.DIO7_4InitialDir" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.NumSyncRegs" Type="Str">11111111</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{3239FC0B-0392-4EC8-8556-C4BDA939E62D}</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="user.lib" Type="Folder">
						<Item Name="4 PulseGenerations.vi" Type="VI" URL="/&lt;userlib&gt;/_NI VeriStand FPGA Support/NI VeriStand RIO Library/IP Based IO/Pulse Generation/4 PulseGenerations.vi"/>
						<Item Name="9215 4Ch Analog Input.vi" Type="VI" URL="/&lt;userlib&gt;/_NI VeriStand FPGA Support/NI VeriStand RIO Library/Basic IO/AI/9215/9215 4Ch Analog Input.vi"/>
						<Item Name="9263_9264_9269 4Ch Analog Output.vi" Type="VI" URL="/&lt;userlib&gt;/_NI VeriStand FPGA Support/NI VeriStand RIO Library/Basic IO/AO/9263_9264_9269/9263_9264_9269 4Ch Analog Output.vi"/>
						<Item Name="NI_VS FPGA Clock Support.lvlib" Type="Library" URL="/&lt;userlib&gt;/_NI VeriStand FPGA Support/NI VeriStand FPGA Clock Support/NI_VS FPGA Clock Support.lvlib"/>
					</Item>
					<Item Name="vi.lib" Type="Folder">
						<Item Name="NI_VS FPGA Support.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI Veristand/FPGA/NI_VS FPGA Support.lvlib"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="Tupac FPGA" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">Tupac FPGA</Property>
						<Property Name="Comp.BitfileName" Type="Str">cRIO-9113 Tupac.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str">Default</Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">high(timing)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/mclab/Dropbox/TMR4243 - LAB/04 cRIO software/FPGA IO/bitfiles/cRIO-9113 Tupac.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">bitfiles/cRIO-9113 Tupac.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/mclab/Dropbox/TMR4243 - LAB/04 cRIO software/FPGA IO/Veristand IO FPGA Project.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">true</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/NI-cRIO9024-CSE1/Chassis/FPGA Target/FPGA IO mapping.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
