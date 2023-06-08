wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 1 31 1918 508
wvResizeWindow -win $_nWave1 0 23 1920 1057
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/dcs/dcs064/HW04/03_GATE/HE.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBENCH"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_image\[7:0\]} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/out_image\[7:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBENCH/clk} \
{/TESTBENCH/in_image\[7:0\]} \
{/TESTBENCH/in_valid} \
{/TESTBENCH/out_image\[7:0\]} \
{/TESTBENCH/out_valid} \
{/TESTBENCH/rst_n} \
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvExit
