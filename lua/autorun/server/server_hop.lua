hook.Add("PlayerSay", "server_hopper", function(ply, text, public)
	text = string.lower(text)
	if ( text == "!hop" || text == "!servers"  || text == "!hopper" ) then
		ply:ConCommand("server_hop")
		return ""
	end
end )
