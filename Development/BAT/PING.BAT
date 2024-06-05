rem  ping 192.168.0.102 -a
rem   arp -a

 FOR /L %%X IN (100,1,105) DO ping 192.168.0.%%X
 
pause