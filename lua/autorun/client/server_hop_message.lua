/*
  ____ _   _           _      
 / ___| \ | | ___   __| | ___ 
| |  _|  \| |/ _ \ / _` |/ _ \
| |_| | |\  | (_) | (_| |  __/
 \____|_| \_|\___/ \__,_|\___| (Steam_0:1:70711393)
 This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/. Credit to the author must be given when using/sharing this work or derivative work from it.
*/

local function server_hop_message()
	surface.PlaySound("vo/npc/male01/gordead_ans03.wav")
end
concommand.Add("server_hop_message", server_hop_message)
