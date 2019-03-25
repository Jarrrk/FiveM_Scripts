-- When driving a vehicle, when you get air time you and any passengers will enter slowmo!
CreateThread(function()
	-- How much to slowmo! 1.0 being normal, anything lower will work - 0.0 is not advised
	local slowmoModifier = 0.6
	
	while true do
		local playerPed = PlayerPedId()
		
		if IsPedInAnyVehicle(playerPed) then
			if IsEntityInAir(GetVehiclePedIsIn(playerPed)) then
				SetTimeScale(slowmoModifier)
			else
				SetTimeScale(1.0)
			end
		else
			SetTimeScale(1.0)
		end
		
		Wait(1)
	end
end)