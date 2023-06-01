RegisterServerEvent('baseevents:onPlayerDied')
RegisterServerEvent('baseevents:onPlayerKilled')
RegisterServerEvent('baseevents:onPlayerWasted')
RegisterServerEvent('baseevents:enteringVehicle')
RegisterServerEvent('baseevents:enteringAborted')
RegisterServerEvent('baseevents:enteredVehicle')
RegisterServerEvent('baseevents:leftVehicle')

AddEventHandler('baseevents:onPlayerKilled', function(killedBy, data)
	local victim = source

	RconLog({msgType = 'playerKilled', victim = victim, attacker = killedBy, data = data})
end)

AddEventHandler('baseevents:onPlayerDied', function(killedBy, pos)
	local victim = source

	RconLog({msgType = 'playerDied', victim = victim, attackerType = killedBy, pos = pos})
end)

AddEventHandler('baseevents:enteringVehicle', function(vehicle, seat, vehModel, netId)
    local player = source
    TriggerClientEvent('baseevents:enteringVehicle', player, vehicle, seat, vehModel, netId)
end)

AddEventHandler('baseevents:leftVehicle', function(vehicle, seat, vehModel, netId)
    local player = source
    TriggerClientEvent('baseevents:leftVehicle', player, vehicle, seat, vehModel, netId)
end)