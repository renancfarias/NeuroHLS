
set TopModule "snn_mnist_hls"
set ClockPeriod 2.5
set ClockList ap_clk
set AxiliteClockList {}
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix snn_mnist_hls_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcku035:-fbva676:-3-e
set SourceFiles {sc {} c ../../snn.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {}
set TBFiles {verilog {C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_targets.txt C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_data.txt C:/Users/renan/Desktop/NeuroHLS/snn_n-mnist_resource_opt/snn_tb.cpp} bc {C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_targets.txt C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_data.txt C:/Users/renan/Desktop/NeuroHLS/snn_n-mnist_resource_opt/snn_tb.cpp} vhdl {C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_targets.txt C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_data.txt C:/Users/renan/Desktop/NeuroHLS/snn_n-mnist_resource_opt/snn_tb.cpp} sc {C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_targets.txt C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_data.txt C:/Users/renan/Desktop/NeuroHLS/snn_n-mnist_resource_opt/snn_tb.cpp} cas {C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_targets.txt C:/Users/renan/Desktop/NeuroHLS/dataset/n-mnist_testset_data.txt C:/Users/renan/Desktop/NeuroHLS/snn_n-mnist_resource_opt/snn_tb.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/kintexu/kintexu}}}
set HPFPO 0
