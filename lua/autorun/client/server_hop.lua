function server_hop()

	local blur = Material("pp/blurscreen")
	local function DrawBlur(panel, amount)
		local x, y = panel:LocalToScreen(0, 0)
		local scrW, scrH = ScrW(), ScrH()
		surface.SetDrawColor(255, 255, 255)
		surface.SetMaterial(blur)
			for i = 1, 3 do
				blur:SetFloat("$blur", (i / 3) * (amount or 6))
				blur:Recompute()
				render.UpdateScreenEffectTexture()
				surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
			end
	end

	local server_hop = vgui.Create("DFrame", server_hop)
	server_hop:SetSize(320, 200)
	server_hop:SetTitle('Other Dallas servers')
	server_hop:SetVisible(true)
	server_hop:SetDraggable(false)
	server_hop:ShowCloseButton(false)
	server_hop:Center()
	server_hop:MakePopup()
	server_hop.Paint = function(self, w, h)
		DrawBlur(self, 3)
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 150 ) )
		surface.SetDrawColor( Color( 0, 0, 0, 100 ) )
		surface.DrawOutlinedRect( 0, 0, w, h )
	end

	local host_number_one = vgui.Create("DButton", server_hop)
	host_number_one:SetSize(150, 100)
	host_number_one:SetPos(8, 40)
	host_number_one:DockMargin( 0,0,0,0 )
	host_number_one:SetText( "Dallas TX - Any" )
	host_number_one:SetFont( "Default" )

	host_number_one.DoClick = function()
		LocalPlayer():ConCommand("connect 144.202.67.250:27015")
	end

	host_number_one.Paint = function()
		surface.SetDrawColor(255, 255, 255, 150)
		surface.DrawRect(0, 0, server_hop:GetWide(), server_hop:GetTall())
		--draw.DrawRect(0, 0, host_number_one:GetWide(), host_number_one:GetTall(), Color(0, 0, 0, 150))
	end

	local closeButton = vgui.Create("DButton", server_hop)
	closeButton:SetSize( 80, 30 )
	closeButton:SetPos( server_hop:GetWide() - 80, server_hop:GetTall() - 30 )
	closeButton:DockMargin( 0,0,0,0 )
	closeButton:SetText( "Close" )
	closeButton:SetFont( "Default" )

	closeButton.DoClick = function(self)
		server_hop:Close()
	end

	local color = Color(200, 200, 200)
	closeButton.OnCursorEntered = function()
		color = Color(150, 150, 150)
	end
	closeButton.OnCursorExited = function()
		color = Color(200, 200, 200)
	end

	closeButton.Paint = function()
		surface.SetDrawColor( 255, 255, 255, 100 )
    surface.DrawRect( 0, 0, server_hop:GetWide(), server_hop:GetTall() )
	end
end
concommand.Add("server_hop", server_hop)
