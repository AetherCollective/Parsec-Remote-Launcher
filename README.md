# Parsec Remote Launcher
This utility will launch a remote application and establish a connection with Parsec from a shortcut.

## How to use
1. Download the [latest version](https://github.com/BetaLeaf/Parsec-Remote-Launcher/releases/latest) from the Releases section.  
2. Modify the included .ini file to meet your needs.  
3. Make a shortcut of the exe to your desktop and modify the shortcut to include the remote path of the application you want to launch.  

##### Examples:  
```"Parsec Remote Launcher.exe" "C:\Program Files\Steam\Steam.exe -applaunch 570" (launches Dota 2)```  
```"Parsec Remote Launcher.exe" "steam://run/570" (also launches Dota 2, but from URI path)```

## Advanced usage
  * The .ini file uses the flags found in the [Parsec config documentation](https://parsecgaming.com/config).  
  * Flags set in the .ini file override the host's config.txt.  
  * Ini sections [Parsec] and [PsExecFlags] must be set and cannot be omitted.  
  * Ini section [ParsecFlags] can be completely omitted. If not using any flags, remove [ParsecFlags] section header.  
  * Display resolution is automatically detected and set if you leave those flags omitted. It will always match the client resolution.  

## Planned features
The ability to override flags in the .ini file from a shortcut. For now, you can create groups by making a copy and renaming both the .exe and .ini files. Both files must have matching names.

## Thanks for trying my software
Have an issues or want to leave Feedback? Got a cool feature you would like to see? Create an [Issue](https://github.com/BetaLeaf/Parsec-Remote-Launcher/issues).  
Feel free to compile the source code yourself. Instruction can be found at [https://www.autoitscript.com/autoit3/docs/intro/compiler.htm](https://www.autoitscript.com/autoit3/docs/intro/compiler.htm)
