wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs240/HW03/01_RTL/TL.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_TL"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/m_counter\[5:0\]} \
{/TESTBENCH/I_TL/s_counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/m_counter\[5:0\]} \
{/TESTBENCH/I_TL/s_counter\[5:0\]} \
{/TESTBENCH/I_TL/car_mlt\[2:0\]} \
{/TESTBENCH/I_TL/car_ms\[2:0\]} \
{/TESTBENCH/I_TL/car_slt\[2:0\]} \
{/TESTBENCH/I_TL/car_ss\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 17 18 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/m_counter\[5:0\]} \
{/TESTBENCH/I_TL/s_counter\[5:0\]} \
{/TESTBENCH/I_TL/car_mlt\[2:0\]} \
{/TESTBENCH/I_TL/car_ms\[2:0\]} \
{/TESTBENCH/I_TL/car_slt\[2:0\]} \
{/TESTBENCH/I_TL/car_ss\[2:0\]} \
{/TESTBENCH/I_TL/minus_mlt} \
{/TESTBENCH/I_TL/minus_ms} \
{/TESTBENCH/I_TL/minus_slt} \
{/TESTBENCH/I_TL/minus_ss} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
{/TESTBENCH/I_PATTERN/light_main\[1:0\]} \
{/TESTBENCH/I_PATTERN/light_side\[1:0\]} \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/m_counter\[5:0\]} \
{/TESTBENCH/I_TL/s_counter\[5:0\]} \
{/TESTBENCH/I_TL/car_mlt\[2:0\]} \
{/TESTBENCH/I_TL/car_ms\[2:0\]} \
{/TESTBENCH/I_TL/car_slt\[2:0\]} \
{/TESTBENCH/I_TL/car_ss\[2:0\]} \
{/TESTBENCH/I_TL/minus_mlt} \
{/TESTBENCH/I_TL/minus_ms} \
{/TESTBENCH/I_TL/minus_slt} \
{/TESTBENCH/I_TL/minus_ss} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 54518.970503 61538.733372
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectGroup -win $_nWave1 {G1}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_TL"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH"
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/m_counter\[5:0\]} \
{/TESTBENCH/I_TL/s_counter\[5:0\]} \
{/TESTBENCH/I_TL/car_mlt\[2:0\]} \
{/TESTBENCH/I_TL/car_ms\[2:0\]} \
{/TESTBENCH/I_TL/car_slt\[2:0\]} \
{/TESTBENCH/I_TL/car_ss\[2:0\]} \
{/TESTBENCH/I_TL/minus_mlt} \
{/TESTBENCH/I_TL/minus_ms} \
{/TESTBENCH/I_TL/minus_slt} \
{/TESTBENCH/I_TL/minus_ss} \
{/TESTBENCH/car_main_lt\[2:0\]} \
{/TESTBENCH/car_main_s\[2:0\]} \
{/TESTBENCH/car_side_lt\[2:0\]} \
{/TESTBENCH/car_side_s\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/light_main\[1:0\]} \
{/TESTBENCH/light_side\[1:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/I_PATTERN/ans_counter\[31:0\]} \
{/TESTBENCH/I_PATTERN/ans_tot_cycle\[31:0\]} \
{/TESTBENCH/I_PATTERN/golden_light_main\[0:46\]} \
{/TESTBENCH/I_PATTERN/golden_light_side\[0:46\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBENCH/I_TL/main_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/side_cur_state\[2:0\]} \
{/TESTBENCH/I_TL/m_counter\[5:0\]} \
{/TESTBENCH/I_TL/s_counter\[5:0\]} \
{/TESTBENCH/I_TL/car_mlt\[2:0\]} \
{/TESTBENCH/I_TL/car_ms\[2:0\]} \
{/TESTBENCH/I_TL/car_slt\[2:0\]} \
{/TESTBENCH/I_TL/car_ss\[2:0\]} \
{/TESTBENCH/I_TL/minus_mlt} \
{/TESTBENCH/I_TL/minus_ms} \
{/TESTBENCH/I_TL/minus_slt} \
{/TESTBENCH/I_TL/minus_ss} \
{/TESTBENCH/car_main_lt\[2:0\]} \
{/TESTBENCH/car_main_s\[2:0\]} \
{/TESTBENCH/car_side_lt\[2:0\]} \
{/TESTBENCH/car_side_s\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G2" 16)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 41203.147914 -snap {("G2" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 26759.254109 -snap {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 49108.855879 -snap {("G2" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 485903.211125 -snap {("G1" 11)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 399366.109355
wvSetCursor -win $_nWave1 481897.240834 -snap {("G1" 9)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetCursor -win $_nWave1 488314.936789 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 495249.431100 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 495456.150442 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 494478.931732 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 495023.919090 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 495474.943110 -snap {("G1" 10)}
