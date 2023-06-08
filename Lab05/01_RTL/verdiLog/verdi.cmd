debImport "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/inter.sv" \
          "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/mem_slave.sv" \
          "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/PATTERN.sv" \
          "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/TESTBENCH.sv" "-sv" \
          -path {/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL}
debReload
debReload
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_interconnect" -line 41 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_interconnect" -line 41 -pos 1 -win $_nTrace1
srcAction -pos 40 2 11 -win $_nTrace1 -name "I_interconnect" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
srcAction -pos 0 2 3 -win $_nTrace1 -name "inter" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_interconnect" -line 41 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_interconnect" -line 41 -pos 1 -win $_nTrace1
srcAction -pos 40 2 3 -win $_nTrace1 -name "I_interconnect" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_1_reg" -line 39 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_1_reg" -line 39 -pos 1 -win $_nTrace1
srcTraceDriver "TESTBENCH.I_interconnect.data_in_1_reg\[7:0\]" -win $_nTrace1
srcNextTraced
srcHBSelect "TESTBENCH.I_interconnect" -win $_nTrace1
srcTraceLoad "TESTBENCH.I_interconnect.data_in_1_reg\[7:0\]" -win $_nTrace1
srcNextTraced
srcHBSelect "TESTBENCH.I_interconnect" -win $_nTrace1
srcNextTraced
srcHBSelect "TESTBENCH.I_interconnect" -win $_nTrace1
srcNextTraced
srcHBSelect "TESTBENCH.I_interconnect" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBENCH.I_interconnect"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "I_interconnect"
schSelect -win $_nSchema2 -inst "I_interconnect"
schPushViewIn -win $_nSchema2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
schSelect -win $_nSchema2 -inst "inter\(@1\):SigOp0:124:124:Combo"
schSelect -win $_nSchema2 -inst "inter\(@1\):SigOp0:124:124:Combo"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {124 124 1 11 1 1}
schSelect -win $_nSchema2 -inst "inter\(@1\):Always2:127:158:Reg"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {127 158 1 2 1 1}
schSelect -win $_nSchema2 -inst "inter\(@1\):FSM0:44:122:FSM"
schSelect -win $_nSchema2 -inst "inter\(@1\):FSM0:44:122:FSM"
schPushViewIn -win $_nSchema2
fsmSetCurrentWindow -win $_nState3
fsmResizeWindow 0 25 952 416 -win $_nState3
fsmResizeWindow 0 25 952 416 -win $_nState3
fsmResizeWindow 0 25 952 416 -win $_nState3
fsmResizeWindow 0 25 952 416 -win $_nState3
fsmResizeWindow 0 25 952 416 -win $_nState3
wvCreateWindow
wvSetPosition -win $_nWave4 {("G1" 0)}
wvOpenFile -win $_nWave4 \
           {/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/inter.fsdb}
schDeselectAll -win $_nSchema2
schPopViewUp -win $_nSchema2
schDeselectAll -win $_nSchema2
fsmResizeWindow 0 25 952 438 -win $_nState3
schSelect -win $_nSchema2 -inst "I_interconnect"
wvAddSignal -win $_nWave4 "/TESTBENCH/interconnect2master_ready2" \
           "/TESTBENCH/interconnect2master_ready1" \
           "/TESTBENCH/value_master2slave\[2:0\]" \
           "/TESTBENCH/addr_master2slave\[2:0\]" "/TESTBENCH/ready_slave2" \
           "/TESTBENCH/ready_slave1" "/TESTBENCH/valid_master2slave2" \
           "/TESTBENCH/valid_master2slave1" "/TESTBENCH/data_3\[6:0\]" \
           "/TESTBENCH/data_2\[6:0\]" "/TESTBENCH/data_1\[6:0\]" \
           "/TESTBENCH/in_valid_3" "/TESTBENCH/in_valid_2" \
           "/TESTBENCH/in_valid_1" "/TESTBENCH/rst_n" "/TESTBENCH/clk"
wvSetPosition -win $_nWave4 {("G1" 0)}
wvSetPosition -win $_nWave4 {("G1" 16)}
wvSetPosition -win $_nWave4 {("G1" 16)}
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
wvZoomIn -win $_nWave4
wvScrollDown -win $_nWave4 1
wvSetPosition -win $_nWave4 {("G2" 0)}
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {37 38 9 1 1 1} -backward
wvSetPosition -win $_nWave4 {("G1" 16)}
wvSetPosition -win $_nWave4 {("G2" 0)}
wvAddSignal -win $_nWave4 "/TESTBENCH/I_interconnect/cur_state\[2:0\]" \
           "/TESTBENCH/I_interconnect/nxt_state\[2:0\]"
wvSetPosition -win $_nWave4 {("G2" 0)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetCursor -win $_nWave4 971.897410 -snap {("G2" 1)}
wvSetCursor -win $_nWave4 6358.985910 -snap {("G2" 1)}
wvSetCursor -win $_nWave4 1555.035856 -snap {("G2" 1)}
wvSetCursor -win $_nWave4 6331.217413 -snap {("G2" 1)}
verdiDockWidgetSetCurTab -dock windowDock_nState_3
schSelect -win $_nSchema2 -inst "I_interconnect"
schPushViewIn -win $_nSchema2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave4 1194.045389 -snap {("G2" 1)}
wvSetCursor -win $_nWave4 2832.386737 -snap {("G1" 16)}
wvSetCursor -win $_nWave4 4470.728085 -snap {("G1" 16)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSetOptions -annotate on -win $_nTrace1
schSetOptions -win $_nSchema1 -annotate on
wvScrollDown -win $_nWave4 2
wvSetPosition -win $_nWave4 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_2_reg" -line 87 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetPosition -win $_nWave4 {("G3" 0)}
wvAddSignal -win $_nWave4 "/TESTBENCH/I_interconnect/data_in_2_reg\[7:0\]"
wvSetPosition -win $_nWave4 {("G3" 0)}
wvSetPosition -win $_nWave4 {("G3" 1)}
wvSetPosition -win $_nWave4 {("G3" 1)}
wvSetCursor -win $_nWave4 6053.532439 -snap {("G2" 2)}
wvSetCursor -win $_nWave4 5914.689951 -snap {("G2" 2)}
wvSetCursor -win $_nWave4 8330.549227 -snap {("G1" 16)}
wvSetCursor -win $_nWave4 9635.668606 -snap {("G1" 15)}
wvSetCursor -win $_nWave4 12801.277313 -snap {("G1" 15)}
wvSetCursor -win $_nWave4 12884.582805 -snap {("G2" 0)}
wvSetCursor -win $_nWave4 12884.582805 -snap {("G1" 16)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_2_reg" -line 88 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_2_comb" -line 88 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ready_slave1" -line 87 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_2" -line 86 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_2_comb" -line 86 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_2_comb" -line 87 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_in_3" -line 92 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ready_slave2" -line 93 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave4 4748.413060 -snap {("G1" 16)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 3 -pos 1 -win $_nTrace1
srcSetSearchMode -posedge
srcSearchNext -win $_nTrace1
srcSearchPrev -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
wvScrollDown -win $_nWave4 1
wvScrollUp -win $_nWave4 7
wvScrollUp -win $_nWave4 1
wvSaveSignal -win $_nWave4 \
           "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/debug.rc"
wvScrollDown -win $_nWave4 4
wvScrollUp -win $_nWave4 4
wvSelectSignal -win $_nWave4 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           {( "G2" 1 2 )} {( "G3" 1 )} 
wvCut -win $_nWave4
wvSetPosition -win $_nWave4 {("G3" 0)}
wvSelectGroup -win $_nWave4 {G1}
wvSetPosition -win $_nWave4 {("G1" 0)}
wvRestoreSignal -win $_nWave4 \
           "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab05/01_RTL/debug.rc" \
           -overWriteAutoAlias on -appendSignals on
wvScrollDown -win $_nWave4 4
wvSelectSignal -win $_nWave4 {( "G1" 13 )} 
wvSelectSignal -win $_nWave4 {( "G1" 15 )} 
wvSelectSignal -win $_nWave4 {( "G2" 2 )} 
wvSelectSignal -win $_nWave4 {( "G3" 1 )} 
wvSelectSignal -win $_nWave4 {( "G1" 16 )} 
wvSelectSignal -win $_nWave4 {( "G1" 13 )} 
wvScrollDown -win $_nWave4 0
debExit
