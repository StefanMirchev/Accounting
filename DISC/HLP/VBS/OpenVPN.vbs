dim commandLine, WshShell
  commandLine = "D:\Program Files\OpenVPN\bin\openvpn-gui.exe --connect 'vpnbook-us1-udp53.ovpn' --config_dir 'D:\Program Files\OpenVPN\config' --silent_connection 1"
  Set WshShell = CreateObject("WScript.Shell")
  Call WshShell.Run (commandLine,8,false)
  Set WshShell=Nothing
