copy ..\EnvLayer.np EnvLayer.m
copy ..\NPC0.np NPC0.m
obc EnvLayer.m NPC0.m -o npc0.exe
call BatchSubstitute.bat "(*repl0*)" "(*" NPC0.m > tmp
call BatchSubstitute.bat "(*repl1*)" "*)" tmp > tmp2
call BatchSubstitute.bat "(*repl2" "(*repl2*)" tmp2 > tmp
call BatchSubstitute.bat "repl3*)" "(*repl3*)" tmp > tmp2
npc0.exe < NPC1.np
REM ..\..\runtime\npx.exe out