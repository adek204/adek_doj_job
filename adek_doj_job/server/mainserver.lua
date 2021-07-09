ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--------------------------------------------------------------------------------------------------------------------------------------------------SZAFKI\/
for k,v in pairs(Config.Zone) do
	TriggerEvent('esx_society:registerSociety', v.szafka, v.szafka, v.society, v.society, v.society, {type = 'public'})
end
ESX.RegisterServerCallback('adek:getStockItems', function(source, cb, society)
	TriggerEvent('esx_addoninventory:getSharedInventory', society, function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('adek:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)

RegisterServerEvent('adek:getStockItem')
AddEventHandler('adek:getStockItem', function(itemName, count, society)
	_source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', society, function(inventory)
		inventoryItem = inventory.getItem(itemName)

		if count > 0 and inventoryItem.count >= count then

			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', source, ('Nieprawidłowa ilość'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)				
			end	
		else
			TriggerClientEvent('esx:showNotification', source, ('Nieprawidłowa ilość'))
		end
	end)
end)

RegisterServerEvent('adek:putStockItems')
AddEventHandler('adek:putStockItems', function(itemName, count, society)
	xPlayer = ESX.GetPlayerFromId(source)
	sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', society, function(inventory)
		inventoryItem = inventory.getItem(itemName)
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', source, ('Nieprawidłowa ilość'))
		end
	end)
end)
----------------------------------------------------------------------------------------------------------------SZAFKI^
ESX.RegisterServerCallback('adek:getlimitaut', function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local elements = {}
	for k,v in ipairs(garage) do
		if Config.CarManagment then
		table.insert(elements, {model = v.model, limit = v.limit, label = v.label.."<span style='color:green;'> W garażu - </span>"..v.limit})
		else
		table.insert(elements, {model = v.model, label = v.label})
	end
end
		cb(elements)
end)

ESX.RegisterServerCallback('adek:getlimitaut2', function(source,cb,model)
	for k,v in ipairs(garage) do
		if Config.CarManagment == true then
		if v.model == model then
			if v.limit > 0 then 
			v.limit = v.limit - 1
				cb(true)
			else
				cb(false)
			end
		else
			cb(true)
			end
		end
	end
	cb(true)
end)

ESX.RegisterServerCallback('adek:getlimitaut3', function(source,cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local elements = {}
	for k,v in ipairs(garage2) do
		if Config.CarManagment then
		table.insert(elements, {model = v.model, limit = v.limit, label = v.label.."<span style='color:green;'> W garażu - </span>"..v.limit})
		else
		table.insert(elements, {model = v.model, label = v.label})
	end
end
		cb(elements)
end)

ESX.RegisterServerCallback('adek:getlimitaut4', function(source,cb,model)
	for k,v in ipairs(garage2) do
		if Config.CarManagment then
		if v.model == model then
			if v.limit > 0 then 
			v.limit = v.limit - 1
				cb(true)
			else
				cb(false)
			end
		else
			cb(true)
			end
		end
	end
	cb(false)
end)



RegisterServerEvent("adek:dodajauto")
AddEventHandler('adek:dodajauto', function(model)
	for k,v in ipairs(garage) do
		if v.model == model then
			v.limit = v.limit + 1
		end
	end
end)
RegisterServerEvent("adek:dodajauto2")
AddEventHandler('adek:dodajauto2', function(model)
	for k,v in ipairs(garage2) do
		if v.model == model then
			v.limit = v.limit + 1
		end
	end
end)

garage = {}
garage2 = {}
AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	for k,v in ipairs(Config.Vehicles) do
	table.insert(garage, {model = v.model, limit = v.limit, label = v.label})
	end
	for k,v in ipairs(Config.Helicopters) do
	table.insert(garage2, {model = v.model, limit = v.limit, label = v.label})
	end
end)  

mandatAmount = nil

RegisterNetEvent('tablet_doj:SendMessage')
AddEventHandler('tablet_doj:SendMessage', function(target, mandatAmount, mandatReason)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)
	local identifier = targetXPlayer.getIdentifier()
	local policjant = GetCharacterName(_source)
	local policee = policjant.." (".. sourceXPlayer.getName() ..")"
	local name = GetCharacterName(target)
	local imie = GetImie(target)
	local nazwisko = GetNazwisko(target)
	local mandat = tonumber(mandatAmount)
	targetXPlayer.removeAccountMoney('bank', mandat)
	sourceXPlayer.addAccountMoney('bank', mandat * 0.75)
TriggerEvent('esx_addonaccount:getSharedAccount', 'society_doj', function(account)
	account.addMoney(mandat * 0.25)
end)
local steamid = sourceXPlayer.identifier
local steamid2 = targetXPlayer.identifier

local name1 = GetPlayerName(_source)
local name2 = GetPlayerName(target)

local dane = "[ID: ".._source.." | Nazwa: "..name1.." | SteamID: "..steamid.." ]"
local dane2 = "[ID: "..target.." | Nazwa: "..name2.." | SteamID: "..steamid2.." ]"
			  
 wiadomosc = "Powód: "..mandatReason.."\nKwota: "..mandat.."\nKto wydał: "..dane.."\nKto otrzymał: "..dane2..""

DiscordHook('DOJ : Faktura', wiadomosc, 1669329)
end)

function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier = @identifier',
	{
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] ~= nil and result[1].firstname ~= nil and result[1].lastname ~= nil then
		return result[1].firstname .. ' ' .. result[1].lastname
	else
		return GetPlayerName(source)
	end
end
function GetImie(source)
	local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier = @identifier',
	{
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] ~= nil and result[1].firstname ~= nil then
		return result[1].firstname
	else
		return GetPlayerName(source)
	end
end
function GetNazwisko(source)
	local result = MySQL.Sync.fetchAll('SELECT * FROM users WHERE identifier = @identifier',
	{https://github.com/adek204/adek_doj_job/blob/main/adek_doj_job/server/mainserver.lua
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] ~= nil and result[1].lastname ~= nil then
		return result[1].lastname
	else
		return GetPlayerName(source)
	end
end

function DiscordHook(hook,message,color)
    local hooke = Config.Hook
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
			["image"] = {
				["url"] = "https://i.imgur.com/ZGPxFN2.jpg"
			},
            ["footer"] = {
				["text"] = 'Doj | Faktura - To NIE TESTÓWKA'
                    },
                }
            }
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(hooke, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end
