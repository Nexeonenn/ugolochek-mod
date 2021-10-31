UModLib = UModLib or {}

local gay = print
local badgay = hook.Add
local goodgay = hook.Remove
local asker = draw.SimpleText
function UModLib.CopyText(args)
	SetClipboardText(args)
	MsgC(Color(0,150,0),'Текст скопирован в буфер обмена нажмите CTRL + V')
end