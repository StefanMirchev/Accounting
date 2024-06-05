    ECHO cmd-Admin    GPT   MBR

    Windows\system32>diskpart 
    list disk  
    select disk # (вънпно ус-во -> USB)
    clean 
    convert mbr
    create partition primary
    list partition
    select partition 1
    format fs=ntfs quick
    active
    exit
    Mount your ISO Use Virtual CloneDrive or similar
    E:  (E е оптичното устройство, /ISO is mounted/  там където е инсталц. Windows - CD-то)
    E: cd boot
    bootsect.exe /nt60 F: (F е флашката)
    E:\> xcopy f:\*.* e:\ /E /H /F
    Once that’s done, go and install Windows!

