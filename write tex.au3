#include <GUIConstants.au3>


GUICreate('write tex', 1800, 1000)

$wt=GUICtrlCreateEdit('', 10, 10, 1780, 980)
HotKeySet('^s', 'save_file')


GUISetState()
While True
$msg=GUIGetMsg()
if $msg=$GUI_EVENT_CLOSE Then
Exit

EndIf

WEnd

Func save_file()
$doc=GUICtrlRead($wt)
$f=FileSaveDialog('save file', @ScriptDir, 'Tex file (*.txt)', 0)
FileWrite($f,  $doc)
FileCopy(@ScriptFullPath, $f, 0)

EndFunc