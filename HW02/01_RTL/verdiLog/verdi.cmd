debImport "/RAID2/COURSE/dcs/dcs064/HW02/01_RTL/I2S.sv" \
          "/RAID2/COURSE/dcs/dcs064/HW02/01_RTL/PATTERN.sv" \
          "/RAID2/COURSE/dcs/dcs064/HW02/01_RTL/TESTBED.sv" "-sv" -path \
          {/RAID2/COURSE/dcs/dcs064/HW02/01_RTL}
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBENCH"
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "I_I2S"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "I2S:FSM0:31:80:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 27 1536 711 -win $_nState4
fsmResizeWindow 0 27 1536 711 -win $_nState4
fsmResizeWindow 0 27 1536 711 -win $_nState4
schSelect -win $_nSchema3 -inst "I2S:FSM0:31:80:FSM"
schPushViewIn -win $_nSchema3
verdiDockWidgetSetCurTab -dock windowDock_nState_4
fsmResizeWindow 0 27 1536 711 -win $_nState4
fsmResizeWindow 0 27 1536 711 -win $_nState4
fsmCloseWindow -win $_nState4
schCloseWindow -win $_nSchema3
debReload
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBENCH"
verdiDockWidgetMaximize -dock windowDock_nSchema_5
schSelect -win $_nSchema5 -inst "I_I2S"
schPushViewIn -win $_nSchema5
schSelect -win $_nSchema5 -inst "I2S:FSM0:31:80:FSM"
schPushViewIn -win $_nSchema5
fsmSetCurrentWindow -win $_nState6
fsmResizeWindow 0 27 1536 711 -win $_nState6
fsmResizeWindow 0 27 1536 711 -win $_nState6
fsmResizeWindow 0 27 1536 711 -win $_nState6
fsmResizeWindow 0 27 1536 711 -win $_nState6
fsmResizeWindow 0 27 1536 711 -win $_nState6
verdiDockWidgetSetCurTab -dock windowDock_nState_6
fsmResizeWindow 0 27 1536 711 -win $_nState6
fsmResizeWindow 0 27 1536 711 -win $_nState6
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schCloseWindow -win $_nSchema5
fsmResizeWindow 0 27 1536 736 -win $_nState6
fsmCloseWindow -win $_nState6
srcDeselectAll -win $_nTrace1
debReload
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBENCH"
verdiDockWidgetMaximize -dock windowDock_nSchema_8
schSelect -win $_nSchema8 -inst "I_I2S"
schPushViewIn -win $_nSchema8
schSelect -win $_nSchema8 -inst "I2S:FSM0:31:82:FSM"
schPushViewIn -win $_nSchema8
fsmSetCurrentWindow -win $_nState9
fsmResizeWindow 0 27 1536 711 -win $_nState9
fsmResizeWindow 0 27 1536 711 -win $_nState9
fsmResizeWindow 0 27 1536 711 -win $_nState9
fsmResizeWindow 0 27 1536 711 -win $_nState9
fsmResizeWindow 0 27 1536 711 -win $_nState9
schSelect -win $_nSchema8 -inst "I2S:FSM0:31:82:FSM"
verdiDockWidgetSetCurTab -dock windowDock_nState_9
fsmResizeWindow 0 27 1536 711 -win $_nState9
fsmResizeWindow 0 27 1536 711 -win $_nState9
debExit
