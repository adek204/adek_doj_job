 ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

--------------------------------------------------------------------------------------------------------------------------------------------------SZAFKI\/
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        HaveFoundAnyZone = false
		for k,v in pairs(Config.Zone) do
                coords = GetEntityCoords(PlayerPedId())
                distance = GetDistanceBetweenCoords(coords, v.Pos.x,v.Pos.y,v.Pos.z, true)
            if distance < 5.0 then
                HaveFoundAnyZone = true
                if distance < 5.0 then
					if praca and praca.name == Config.Job then
						if v.type == 'przebieralnia' then
							DrawMarker(1, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
							text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby otworzyć Przebieralnie')
								if IsControlJustPressed(0, 38) then
									przebieralniamenu()
								end
						elseif v.type == 'garaz' then
							DrawMarker(1, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
							text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby otworzyć Garaż')
								if IsControlJustPressed(0, 38) then
									OpenSpawnMenu()
								end
						elseif v.type == 'chowanie' then
						myPed = GetPlayerPed(-1)
						if IsPedInAnyVehicle(myPed, true) then
							DrawMarker(23, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
							text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby schować pojazd')
							end
								if IsControlJustPressed(0, 38) then
									DeleteCar()
								end
						elseif v.type == 'szafka' then
							DrawMarker(1, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
							text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby otworzyć Szafke')
								if IsControlJustPressed(0, 38) then
									OpenMenu(v.society)
								end
						elseif v.type == 'garazhelikoptery' then
							DrawMarker(1, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
							text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby otworzyć Garaż z helikopterami')
								if IsControlJustPressed(0, 38) then
									OpenSpawnMenuHeli()
								end
						elseif v.type == 'chowaniehelek' then
							myPed = GetPlayerPed(-1)
							if IsPedInAnyVehicle(myPed, true) then
								DrawMarker(23, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
								text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby schować pojazd')
								end
									if IsControlJustPressed(0, 38) then
										DeleteHeli()
									end
						elseif v.type == 'bossmenu' then
							DrawMarker(1, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 0, 255, 255, 100, false, true, 2, false, false, false, false)
							text3d(vector3(v.Pos.x, v.Pos.y, v.Pos.z + 0.75), '~r~Kliknij ~b~E ~r~aby otworzyć menu szefa')
									if IsControlJustPressed(0, 38) then
										OpenBossMenu()
									end
						end
					else
						Citizen.Wait(5000)
				end
			end
        end
	end
if not HaveFoundAnyZone then
    Citizen.Wait(2000)
	ESX.UI.Menu.CloseAll()
        end
    end
end)



RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	praca 			= job
	praca.name 		= job.name
	praca.grade 	= job.grade
end)

function OpenMenu(CurrentSociety)
	local elements = {
	}
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'military_actions', {
			title    = 'Szafka',
			align    = 'right',
			elements = {
				{label = 'WŁÓŻ DO SZAFKI', value = 'put_stock'},
				{label = 'WYCIĄGNIJ Z SZAFKI', value = 'get_stock'},
			  }
		}, function(data, menu)
			if data.current.value == 'put_stock' then
				OpenPutStocksMenu(CurrentSociety)	
			end
			if data.current.value == 'get_stock' then
				OpenGetStocksMenu(CurrentSociety)
			end
		end, function(data, menu)
			menu.close()
	end)
end

function OpenPutStocksMenu(CurrentZone)
	ESX.TriggerServerCallback('adek:getPlayerInventory', function(inventory)
		local elements = {}
		for i=1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label .. ' x' .. item.count,
					type = 'item_standard',
					value = item.name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
			title    = ('Ekwipunek'),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
				title = ('Ilość')
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if count == nil then
					ESX.ShowNotification(GetText(ESX.CheckLanguage(),'invalid_amount','',''))
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('adek:putStockItems', itemName, count, CurrentZone)

					Citizen.Wait(300)
					OpenPutStocksMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end

function OpenGetStocksMenu(CurrentZone)
	ESX.TriggerServerCallback('adek:getStockItems', function(items)
		local elements = {}
		for i=1, #items, 1 do
			if items[i].count > 0 then
				table.insert(elements, {
					label = 'x' .. items[i].count .. ' ' .. items[i].label,
					value = items[i].name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
			title    = ('Schowek'),
			align    = 'left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
				title = ('Ilość')
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if count == nil then
					ESX.ShowNotification(GetText(ESX.CheckLanguage(),'invalid_amount','',''))
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('adek:getStockItem', itemName, count, CurrentZone)
					Citizen.Wait(300)
					OpenGetStocksMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end, CurrentZone)
end
----------------------------------------------------------------------------------------------------------------SZAFKI^
function przebieralniamenu()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
        if skin.sex == 1 then
            sex = 'f'
        else
            sex = 'm'
        end
        local newelements = {}
        table.insert(newelements,{label = 'Ubrania cywilne',type = 'cyw'})
        for k,v in ipairs(Config.Ubrania[praca.grade][sex]) do 
            table.insert(newelements,{label = v.label,data = v.data})
        end
        ESX.UI.Menu.Open(
            'default', GetCurrentResourceName(), 'Szafka',
            {
                title    = 'Szafka',
                align    = 'right',
                elements = newelements,
            },
        function(data, menu)
                if data.current.type == 'cyw' then
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    menu.close()
                else
                    TriggerEvent('skinchanger:loadSkin', data.current.data)
                    menu.close()
                end
        end,
        function(data, menu)
            menu.close()
        end)
	end)
end
----------------------------------------------------------------------------------------------------------------AUTA\/
function OpenSpawnMenu()
	IsInMainMenu = true
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner', {
		title = ('Garaż'),
		align = GetConvar('esx_MenuAlign', 'right'),
		elements = {
			{label = ('Auta'), value = 'default_veh'}
	}}, function(data, menu)
		local action = data.current.value

		if action == 'default_veh' then
			ESX.TriggerServerCallback('adek:getlimitaut', function(cbdata)
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'default_veh', {
				title = ('Auta'),
				align = GetConvar('esx_MenuAlign', 'right'),
				elements = cbdata
			}, function(data, menu)
				ESX.TriggerServerCallback('adek:getlimitaut2', function(cbdata2)
					if cbdata2 then
						SpawnVehicle(data.current.model)
						ESX.UI.Menu.CloseAll()
						print(json.encode(cbdata2))
					else
						print(cbdata2)
						ESX.ShowNotification("Nie ma już takiego pojazdu w garażu")
					end
				end, data.current.model)
		end, function(data, menu)
			menu.close()
				end)
			end)
		end
	end, function(data, menu)
		IsInMainMenu = false
		ESX.UI.Menu.CloseAll()
	end)
end

function SpawnVehicle(request)
	local myPed = GetPlayerPed(-1)
	local player = PlayerId()
	local vehicle = GetHashKey(request)

    RequestModel(vehicle)

	while not HasModelLoaded(vehicle) do
		Wait(1)
	end
	for k,v in pairs(Config.Zone) do
		if v.type == 'garaz' then
	local spawned_car = CreateVehicle(vehicle, v.Spawn.x, v.Spawn.y, v.Spawn.z, v.Spawn.heading, 1, 0)
	SetVehicleOnGroundProperly(spawned_car)
	SetPedIntoVehicle(myPed, spawned_car, - 1)
	SetModelAsNoLongerNeeded(vehicle)
		end
	end
end

function DeleteCar()
	local myPed = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(myPed, false)
	local vehicleModel = GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))
	local veh = checkhash()
	if veh ~= nil then
	if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
	ESX.Game.DeleteVehicle(vehicle)
	TriggerServerEvent("adek:dodajauto", veh)
	else
		ESX.ShowNotification('Musisz być na miejscu kierowcy')
		end
	else
		ESX.ShowNotification('To nie jest policyjne auto')
	end
end

function checkhash()
	local ped = GetPlayerPed(-1)
	local veh = GetVehiclePedIsIn(ped, false)
	local model = GetEntityModel(veh)
	local displaytext = GetDisplayNameFromVehicleModel(model)
	for k,v in ipairs(Config.Vehicles) do
		if displaytext == v.model then
			return v.model
		end
	end
	return nil
end
----------------------------------------------------------------------------------------------------------------HELKI\/
function OpenSpawnMenuHeli()
	IsInMainMenu = true
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'helicopter_spawner', {
		title = ('Garaż'),
		align = GetConvar('esx_MenuAlign', 'right'),
		elements = {
			{label = ('Helikoptery'), value = 'default_veh'}
	}}, function(data, menu)
		local action = data.current.value
		if action == 'default_veh' then
			ESX.TriggerServerCallback('adek:getlimitaut3', function(cbdata)
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'default_veh', {
				title = ('Helikoptery'),
				align = GetConvar('esx_MenuAlign', 'right'),
				elements = cbdata
			}, function(data, menu)
				ESX.TriggerServerCallback('adek:getlimitaut4', function(cbdata2)
					if cbdata2 then
						Spawnheli(data.current.model)
						ESX.UI.Menu.CloseAll()
					else
						ESX.ShowNotification('Nie ma już takiego pojazdu w garażu')
					end
				end, data.current.model)
		end, function(data, menu)
			menu.close()
				end)
			end)
		end
	end, function(data, menu)
		IsInMainMenu = false
		ESX.UI.Menu.CloseAll()
	end)
end

function Spawnheli(request)
	local myPed = GetPlayerPed(-1)
	local player = PlayerId()
	local vehicle = GetHashKey(request)

    RequestModel(vehicle)

	while not HasModelLoaded(vehicle) do
		Wait(1)
	end
	for k,v in pairs(Config.Zone) do
		if v.type == 'garazhelikoptery' then
	local spawned_car = CreateVehicle(vehicle, v.Spawn.x, v.Spawn.y, v.Spawn.z, v.Spawn.heading, 1, 0)
	SetVehicleOnGroundProperly(spawned_car)
	SetPedIntoVehicle(myPed, spawned_car, - 1)
	SetModelAsNoLongerNeeded(vehicle)
		end
	end
end
function DeleteHeli()
	local myPed = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(myPed, false)
	local vehicleModel = GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))
	local veh = checkhashheli()
	if veh ~= nil then
	if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
	ESX.Game.DeleteVehicle(vehicle)
	TriggerServerEvent("adek:dodajauto2", veh)
	else
		ESX.ShowNotification('Musisz być na miejscu kierowcy')
	end
	else
		ESX.ShowNotification('To nie jest policyjne auto')
	end
end

--------------------------------------------------------------------------------------------------------------------------------------
function OpenBossMenu()
	TriggerEvent('esx_society:openBossMenu', 'doj', function(data, menu)
	end)
end


function checkhashheli()
	local ped = GetPlayerPed(-1)
	local veh = GetVehiclePedIsIn(ped, false)
	local model = GetEntityModel(veh)
	local displaytext = GetDisplayNameFromVehicleModel(model)
	for k,v in ipairs(Config.Helicopters) do
		if displaytext == v.model then
			return v.model
		end
	end
	return nil
end

text3d = function(coords, text, size)
    local onScreen, x, y = World3dToScreen2d(coords.x, coords.y, coords.z)
    local camCoords      = GetGameplayCamCoords()
    local dist           = GetDistanceBetweenCoords(camCoords, coords.x, coords.y, coords.z, true)
    local size           = size

    if size == nil then
        size = 1
    end

    local scale = (size / dist) * 2
    local fov   = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov

    if onScreen then
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(0)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry('STRING')
        SetTextCentre(1)

        AddTextComponentString(text)
        DrawText(x, y)
    end
end
local PoliceGUI               = false


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if praca ~= nil and (praca.name == 'doj') then
			if IsControlJustPressed(0, Keys["DELETE"]) then
				if praca.name == 'doj' then
					if not PoliceGUI then
						SetNuiFocus(true, true)
						SendNUIMessage({type = 'open'})
						PoliceGUI = true
					end
				else
					ESX.ShowNotification("~r~Nie jesteś na służbie!")
				end
			end
		end
	end
end)

RegisterNUICallback('NUIFocusOff', function()
	SetNuiFocus(false, false)
	SendNUIMessage({type = 'close'})
	PoliceGUI = false
end)

RegisterNUICallback('mandat', function(data, cb)
	local sender = GetPlayerServerId(player)
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
	if PlayerData.job ~= nil and (PlayerData.job.name == 'doj') then
	if closestPlayer ~= -1 and closestDistance <= 3.0 then
		MandatPlayer(GetPlayerServerId(closestPlayer), data.mandatamount, data.mandatreason)
		ESX.ShowNotification('~p~Wpłacono ' .. data.mandatamount *  0.75 .. '$ z mandatu na Twoje konto w banku')
		end
	end
end)

function MandatPlayer(player, ilosc, powod)
	TriggerServerEvent("tablet_doj:SendMessage", player, ilosc, powod)
end

