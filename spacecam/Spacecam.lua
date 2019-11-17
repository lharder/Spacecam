-- GLOBAL
Spacecam = {}

-- Create a Table with Gamepad functions
function Spacecam.setup( player, camera, background )

	msg.post( camera, "setup", { player = player, background = background } )
	msg.post( background, "setup", { player = player, background = background } )
	
end