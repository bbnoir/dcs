verdiWindowResize -win $_Verdi_1 "0" "23" "1920" "1057"
debImport "/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.v" -path \
          {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE}
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "MIPS"
schZoomIn -win $_nSchema3 -pos 1916107 497968
schZoomIn -win $_nSchema3 -pos 1916107 497968
schZoomIn -win $_nSchema3 -pos 1916107 497968
schZoomIn -win $_nSchema3 -pos 1916106 497968
schZoomOut -win $_nSchema3 -pos 2053803 437643
schZoomOut -win $_nSchema3 -pos 2053802 434365
schZoomOut -win $_nSchema3 -pos 2053800 428217
schZoomOut -win $_nSchema3 -pos 2053800 420534
schZoomOut -win $_nSchema3 -pos 2057001 407727
schZoomOut -win $_nSchema3 -pos 2061003 387716
schCloseWindow -win $_nSchema3
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TESTBED"
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/instruction\[31:0\]} \
{/TESTBED/instruction_fail} \
{/TESTBED/out_1\[15:0\]} \
{/TESTBED/out_2\[15:0\]} \
{/TESTBED/out_3\[15:0\]} \
{/TESTBED/out_4\[15:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/output_reg\[19:0\]} \
{/TESTBED/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/instruction\[31:0\]} \
{/TESTBED/instruction_fail} \
{/TESTBED/out_1\[15:0\]} \
{/TESTBED/out_2\[15:0\]} \
{/TESTBED/out_3\[15:0\]} \
{/TESTBED/out_4\[15:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/output_reg\[19:0\]} \
{/TESTBED/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TESTBED"
wvGetSignalSetScope -win $_nWave2 "/TESTBED"
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/instruction\[31:0\]} \
{/TESTBED/instruction_fail} \
{/TESTBED/out_1\[15:0\]} \
{/TESTBED/out_2\[15:0\]} \
{/TESTBED/out_3\[15:0\]} \
{/TESTBED/out_4\[15:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/output_reg\[19:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/instruction\[31:0\]} \
{/TESTBED/instruction_fail} \
{/TESTBED/out_1\[15:0\]} \
{/TESTBED/out_2\[15:0\]} \
{/TESTBED/out_3\[15:0\]} \
{/TESTBED/out_4\[15:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/output_reg\[19:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSetPosition -win $_nWave2 {("G1" 11)}
wvExpandBus -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvScrollUp -win $_nWave2 5
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvShowOneTraceSignals -win $_nWave2 -signal "/TESTBED/I_design/Rs_val\[15:0\]" \
           -driver
srcDeselectAll -win $_nTrace1
srcSearchString "Rs_val" -win $_nTrace1 -next
srcDeselectAll -win $_nTrace1
srcSelect -signal "Rs_val" -line 152 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Rs_val" -line 152 -pos 1 -win $_nTrace1
srcAction -pos 151 9 3 -win $_nTrace1 -name "Rs_val" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "Rs_val" -line 152 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Rs_val" -line 152 -pos 1 -win $_nTrace1
srcShowDefine -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "instr" -line 151 -pos 1 -win $_nTrace1
srcAction -pos 150 9 2 -win $_nTrace1 -name "instr" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "Rs_val" -line 152 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Rs_val" -line 152 -pos 1 -win $_nTrace1
srcAction -pos 151 9 2 -win $_nTrace1 -name "Rs_val" -ctrlKey off
srcShowCalling -win $_nTrace1
srcShowCalling -win $_nTrace1
srcShowDefine -win $_nTrace1
srcShowDefine -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/instruction\[31:0\]} \
{/TESTBED/instruction_fail} \
{/TESTBED/out_1\[15:0\]} \
{/TESTBED/out_2\[15:0\]} \
{/TESTBED/out_3\[15:0\]} \
{/TESTBED/out_4\[15:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/output_reg\[19:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
{/TESTBED/I_design/n1700} \
{/TESTBED/I_design/registers\[79:0\]} \
{/TESTBED/I_design/registers_nxt\[95:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 )} 
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/instruction\[31:0\]} \
{/TESTBED/instruction_fail} \
{/TESTBED/out_1\[15:0\]} \
{/TESTBED/out_2\[15:0\]} \
{/TESTBED/out_3\[15:0\]} \
{/TESTBED/out_4\[15:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/output_reg\[19:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
{/TESTBED/I_design/n1700} \
{/TESTBED/I_design/registers\[79:0\]} \
{/TESTBED/I_design/registers_nxt\[95:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 13 14 15 )} 
wvSetPosition -win $_nWave2 {("G1" 15)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
