$aParsecFlags = IniReadSection(StringTrimRight(@ScriptName, 3) & "ini", "ParsecFlags")
$sParsecPath = IniRead(StringTrimRight(@ScriptName, 3) & "ini", "Parsec", "Path", @ProgramFilesDir)
$sParsec_Server_ID = IniRead(StringTrimRight(@ScriptName, 3) & "ini", "Parsec", "Server_ID", "")
$sPsExec_Path = IniRead(StringTrimRight(@ScriptName, 3) & "ini", "PsExecFlags", "Path", @SystemDir)
$sPsExec_Computer = IniRead(StringTrimRight(@ScriptName, 3) & "ini", "PsExecFlags", "Computer", "")
$sPsExec_Username = IniRead(StringTrimRight(@ScriptName, 3) & "ini", "PsExecFlags", "Username", "")
$sPsExec_Password = IniRead(StringTrimRight(@ScriptName, 3) & "ini", "PsExecFlags", "Password", "")
$bOverride_client_window_x=False
$bOverride_client_window_y=False
$bOverride_server_resolution_x=False
$bOverride_server_resolution_y=False

$sParsecFlags = ""
For $i = 1 To $aParsecFlags[0][0]
	if $aParsecFlags[$i][0] = "client_window_x" then $bOverride_client_window_x=True
	if $aParsecFlags[$i][0] = "client_window_y" then $bOverride_client_window_y=True
	if $aParsecFlags[$i][0] = "server_resolution_x" then $bOverride_server_resolution_x=True
	if $aParsecFlags[$i][0] = "server_resolution_y" then $bOverride_server_resolution_y=True
	$sParsecFlags &= ":" & $aParsecFlags[$i][0] & "=" & $aParsecFlags[$i][1]
Next
if $bOverride_client_window_x=False then $sParsecFlags &= ":client_window_x="&@DesktopWidth
if $bOverride_client_window_y=False then $sParsecFlags &= ":client_window_y="&@DesktopHeight
if $bOverride_server_resolution_x=False then $sParsecFlags &= ":server_resolution_x="&@DesktopWidth
if $bOverride_server_resolution_y=False then $sParsecFlags &= ":server_resolution_y="&@DesktopHeight

ShellExecute("parsecd.exe", "server_id=" & $sParsec_Server_ID & " " & $sParsecFlags, $sParsecPath)
ShellExecute("PsExec.exe", $sPsExec_Computer & ' -u ' & $sPsExec_Username & ' -p ' & $sPsExec_Password & ' start "" ' & $Cmdline[0], $sPsExec_Path)
