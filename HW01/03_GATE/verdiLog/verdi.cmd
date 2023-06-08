wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/RAID2/COURSE/dcs/dcs064/HW01/03_GATE/SMJ_SYN.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/TESTBENCH"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBENCH/hand_n0\[5:0\]} \
{/TESTBENCH/hand_n1\[5:0\]} \
{/TESTBENCH/hand_n2\[5:0\]} \
{/TESTBENCH/hand_n3\[5:0\]} \
{/TESTBENCH/hand_n4\[5:0\]} \
{/TESTBENCH/out_data\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/TESTBENCH/hand_n0\[5:0\]} \
{/TESTBENCH/hand_n1\[5:0\]} \
{/TESTBENCH/hand_n2\[5:0\]} \
{/TESTBENCH/hand_n3\[5:0\]} \
{/TESTBENCH/hand_n4\[5:0\]} \
{/TESTBENCH/out_data\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
debExit
