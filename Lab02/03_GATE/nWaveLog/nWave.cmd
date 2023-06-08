wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/Lab02/03_GATE/Sort_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/in_num0\[5:0\]} \
{/TESTBED/in_num1\[5:0\]} \
{/TESTBED/in_num2\[5:0\]} \
{/TESTBED/in_num3\[5:0\]} \
{/TESTBED/in_num4\[5:0\]} \
{/TESTBED/out_num\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvExit
