debImport "/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL/Sort.sv" \
          "/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL/PATTERN.sv" \
          "/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL/TESTBED.sv" "-sv" -path \
          {/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL}
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL/Sort.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TESTBED"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TESTBED"
wvGetSignalSetScope -win $_nWave2 "/TESTBED"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
srcHBDrag -win $_nTrace1
srcHBSelect "TESTBED.I_Sort" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.I_Sort" -delim "."
srcHBSelect "TESTBED.I_Sort" -win $_nTrace1
srcHBSelect "TESTBED.I_Sort.s1" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.I_Sort.s1" -delim "."
srcHBSelect "TESTBED.I_Sort.s1" -win $_nTrace1
nsMsgSwitchTab -tab general
debImport "/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL/Sort.sv" "-sv" -path \
          {/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL}
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 {/RAID2/COURSE/dcs/dcs064/Lab02/01_RTL/Sort.fsdb}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/TESTBED"
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave3 {("G1" 6)}
wvGetSignalClose -win $_nWave3
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave3 259.070632
wvSetCursor -win $_nWave3 360.446097
debExit
