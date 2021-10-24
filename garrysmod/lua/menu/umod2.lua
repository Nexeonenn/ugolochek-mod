UModLib = UModLib or {}

local gay = print
local badgay = hook.Add
local goodgay = hook.Remove
local asker = draw.SimpleText
function UModLib.CopyText(args)
	SetClipboardText(args)
	MsgC(Color(0,150,0),'Текст скопирован в буфер обмена нажмите CTRL + V')
end
timer.Create("UModStart",5,1,function()
	local menuconnect = vgui.Create('DButton')
	menuconnect:SetText('Подключение к нам')
	menuconnect:SetSize(150,50)
	menuconnect:Center()
	menuconnect:SetPos(ScrW() - 500,ScrH() - 50)
	menuconnect:MakePopup()
	menuconnect.DoClick = function()
		UModLib.CopyText('connect connect.gmodugolochek.ru')
		menuconnect:SetText("IP'адрес скопирован")
		timer.Simple(3,function()
			menuconnect:SetText('Подключение к нам')
		end)
	end
end)

