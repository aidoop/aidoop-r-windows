nssm install "AIdoopRService" "%cd%\start.bat"
nssm set "AIdoopRService" AppDirectory "%cd%"
nssm start "AIdoopRService"
