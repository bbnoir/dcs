wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/I_design/MyReg\[47:0\]} \
{/TESTBED/I_design/MyReg_nxt\[95:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/I_design/MyReg\[47:0\]} \
{/TESTBED/I_design/MyReg_nxt\[95:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 52201493.977764 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 52295301.883879 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 52503763.897468 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 57152466.800494 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 57465159.820877 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 52264032.581841 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 54984461.859172 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 57298390.210006 -snap {("G1" 13)}
wvZoom -win $_nWave1 58111392.063002 58184353.767758
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 125822668.313774 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 134581408.276714 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 157488882.025942 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 157320444.718962 -snap {("G1" 9)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW05/01_RTL/MIPS.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/clk} \
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
{/TESTBED/I_design/MyReg\[47:0\]} \
{/TESTBED/I_design/MyReg_nxt\[95:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvSetActiveFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW05/01_RTL/MIPS.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/clk} \
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
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 17 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/clk} \
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
{/TESTBED/I_design/MyReg\[47:0\]} \
{/TESTBED/I_design/MyReg_nxt\[95:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvSetActiveFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW05/01_RTL/MIPS.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/clk} \
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
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 17 18 19 20 21 22 23 24 25 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 24538.196418 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 19134.478073 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 16299.740581 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 14793.786288 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 16078.276714 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvGetSignalOpen -win $_nWave1
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/I_design/MyReg\[47:0\]} \
{/TESTBED/I_design/MyReg_nxt\[95:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvSetActiveFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW05/01_RTL/MIPS.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/clk} \
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
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/I_design/gcd_state} \
{/TESTBED/I_design/gcd_state_nxt} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 27 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/I_design/MyReg\[47:0\]} \
{/TESTBED/I_design/MyReg_nxt\[95:0\]} \
{/TESTBED/I_design/Rs_val\[15:0\]} \
{/TESTBED/I_design/Rt_val\[15:0\]} \
}
wvSetActiveFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW05/01_RTL/MIPS.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/clk} \
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
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/dcs/dcs064/HW05/03_GATE/MIPS_SYN.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/I_design/gcd_state} \
{/TESTBED/I_design/gcd_state_nxt} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 27 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 27 28 )} 
wvFitSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 28)}
wvExit
