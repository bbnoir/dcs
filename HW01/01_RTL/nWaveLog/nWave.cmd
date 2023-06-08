wvResizeWindow -win $_nWave1 0 23 1536 841
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW01/01_RTL/SMJ.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH"
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH/I_SMJ"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/I_SMJ/diff\[3:0\]} \
{/TESTBENCH/I_SMJ/eqal\[3:0\]} \
{/TESTBENCH/I_SMJ/out_data\[1:0\]} \
{/TESTBENCH/I_SMJ/sorted_n0\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n1\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n2\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n3\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n4\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/I_SMJ/diff\[3:0\]} \
{/TESTBENCH/I_SMJ/eqal\[3:0\]} \
{/TESTBENCH/I_SMJ/out_data\[1:0\]} \
{/TESTBENCH/I_SMJ/sorted_n0\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n1\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n2\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n3\[5:0\]} \
{/TESTBENCH/I_SMJ/sorted_n4\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 59866.343826 -snap {("G2" 0)}
wvExit
