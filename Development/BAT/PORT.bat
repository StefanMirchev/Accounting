Mode COM1 /status
cmd /c  mode com3
mode com3
pause


FOR /L %%a IN (1,1,25) DO Mode COM%%a: >>aaa.txt
pause




