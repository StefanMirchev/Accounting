 1.

 WINDOWS
  {
    "color_scheme": "Packages/Color Scheme - Default/Monokai.sublime-color-scheme",
    "fallback_encoding": "Cyrillic (Windows 1251)",
    "default_encoding": "Cyrillic (Windows 1251)",
    "show_encoding": true,
    "dictionary": "Dictionaries/bg_BG.dic",
    "draw_white_space": "all",
    "font_size": 12,
    "open_files_in_new_window": true,
    "hot_exit": false,
    "remember_full_screen": true,
    "remember_open_files": false,
    "show_encoding": true,
    "spell_check": false,
    "theme": "Adaptive.sublime-theme",
    "update_check": false,
    "caret_style": "solid",
    "remember_workspace": true,
}

  Preferences -> Key Bindings 

 { "keys": ["alt+shift+up"], "command": "select_lines", "args": {"forward": false} },
 { "keys": ["alt+shift+down"], "command": "select_lines", "args": {"forward": true} },
 { "keys": ["ctrl+up"], "command": "scroll_lines", "args": {"amount": 1.0 } },
 { "keys": ["ctrl+down"], "command": "scroll_lines", "args": {"amount": -1.0 } },



2.copy \Packages\Vfp C:\Users\ACCO\AppData\Local\Sublime Text 3\Cache


3. WINDOWS 
Chage the default editor used for editing batch files

%SystemRoot%\System32\NOTEPAD.EXE %1
HKEY_CLASSES_ROOT\batfile\shell\edit\command = C:\DISC\HLP\BATEXE\SUBOPEN.exe  %1

"%SystemRoot%\System32\Notepad.exe" %1
HKEY_CLASSES_ROOT\VBEFile\Shell\Edit\Command = C:\DISC\HLP\BATEXE\SUBOPEN.exe  %1
