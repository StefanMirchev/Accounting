====================================================
Win32Pad 1.5.10.3 by G.Feldman (a.k.a. Gena01)

Win32Pad Page: 	http://www.gena01.com/win32pad/
Support Forums: http://www.gena01.com/forum/
E-mail: 	mailto:win32pad@gena01.com
Main Website: 	http://www.gena01.com

====================================================

Table of Contents:
1. What's New
2. Files/Registry keys used.
3. Troubleshooting

				* * *

1. What's New:
--------------
+ Added Cut option to URL right click menu.
+ Added Ctrl+UP, Ctrl+Down handling to match other editors. 
x Added a little hack to detect Unicode text which is missing Unicode BOM in the beginning of the file. (This should make Win32Pad work with latest Fiddler versions)
x Fixed a small off-by-one error when doing block indent operation.
x Selection start now starts from 1 not 0.
x When you select File->Reload the position is now saved/restored properly.
x Removed the Error during text conversion message that could show up when copying
text to the clipboard. This was a consistent problem for people using Chinese Windows XP.

				* * *

2. Files/Registry keys used:
----------------------------
o Win32Pad uses win32pad.ini file to store it's settings. (This file is now 
  stored in the same directory where Win32Pad is installed)
o Win32Pad does not store any settings in the registry.

				* * *

3. Troubleshooting:
-------------------
o First of all check to see that you have the latest version of Win32Pad. Then
  look in the forums to see if it has been reported yet, and if there is a fix
  or a solution to your problem.

o Win32Pad uses riched20.dll. This DLL is available on most of the current
  versions of Windows. This DLL is also installed and used by various Microsoft
  programs.

o If you think that you found a bug then please report it to me so that I could
  fix it. (Contact information is in the beginning of this file)

