function server_hop()
	local server_hop = vgui.Create("DFrame", server_hop)
	server_hop:SetSize(500, 678)
	server_hop:SetTitle(GetHostName())
	server_hop:SetVisible(true)
	server_hop:SetDraggable(true)
	server_hop:ShowCloseButton(true)
	server_hop:Center()
	server_hop:MakePopup()
	server_hop.Paint = function()
		draw.RoundedBox(8, 0, 0, server_hop:GetWide(), server_hop:GetTall(), Color(61, 52, 52, 255))
	end

	local host_number_one = vgui.Create("DButton", server_hop)
	host_number_one:SetSize(350, 100)
	host_number_one:SetPos(50, 40)
	host_number_one:SetText("Server One")
	host_number_one.DoClick = function()
		LocalPlayer():ConCommand("connect ip")
	end
	host_number_one.Paint = function()
		draw.RoundedBox(8, 0, 0, host_number_one:GetWide(), host_number_one:GetTall(), Color(0, 0, 0, 150))
	end
	
	local host_number_two = vgui.Create("DButton", server_hop)
	host_number_two:SetSize(350, 100)
	host_number_two:SetPos(50, 145)
	host_number_two:SetText("Server Two")
	host_number_two.DoClick = function()
		LocalPlayer():ConCommand("connect ip")
	end
	host_number_two.Paint = function()
		draw.RoundedBox(8, 0, 0, host_number_two:GetWide(), host_number_two:GetTall(), Color(0, 0, 0, 150))
	end
	
	local host_number_three = vgui.Create("DButton", server_hop)
	host_number_three:SetSize(350, 100)
	host_number_three:SetPos(50, 250)
	host_number_three:SetText("Server Three")
	host_number_three.DoClick = function()
		LocalPlayer():ConCommand("connect ip")
	end
	host_number_three.Paint = function()
		draw.RoundedBox(8, 0, 0, host_number_three:GetWide(), host_number_three:GetTall(), Color(0, 0, 0, 150))
	end
	
	local host_number_four = vgui.Create("DButton", server_hop)
	host_number_four:SetSize(350, 100)
	host_number_four:SetPos(50, 355)
	host_number_four:SetText("Server Four")
	host_number_four.DoClick = function()
		LocalPlayer():ConCommand("connect ip")
	end
	host_number_four.Paint = function()
		draw.RoundedBox(8, 0, 0, host_number_four:GetWide(), host_number_four:GetTall(), Color(0, 0, 0, 150))
	end
	
	local host_number_five = vgui.Create("DButton", server_hop)
	host_number_five:SetSize(350, 100)
	host_number_five:SetPos(50, 460)
	host_number_five:SetText("Server Five")
	host_number_five.DoClick = function()
		LocalPlayer():ConCommand("connect ip")
	end
	host_number_five.Paint = function()
		draw.RoundedBox(8, 0, 0, host_number_five:GetWide(), host_number_five:GetTall(), Color(0, 0, 0, 150))
	end
end
concommand.Add("server_hop", server_hop)