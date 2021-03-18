if exist "c:\install\tools.txt" (
goto end
)
md c:\install 
e:\dotNetFx40_Full_x86_x64.exe /q /norestart > c:\install\tools.txt
e:\setup.exe /quiet /forcerestart >> c:\install\tools.txt

:end
echo tools done > c:\install\tools.txt