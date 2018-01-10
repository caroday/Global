local events = {
    'ElementalSpheresOverlords',
    'BigfootBurdenVersperoth',
    'Razzagorn',
    'Shatterer',
    'Zamulosh',	
	'The Hunger',
	'The Rage',
	'Eradicator',
	'Eradicator1',
	'Rupture',
	'World Devourer',	
    'Tarbaz',
    'Shulgrax',
    'Ragiaz',
    'Plagirath',
    'Mazoran',
    'Destabilized',
    'BigfootBurdenWiggler',
    'SvargrondArenaKill',
    'NewFrontierShardOfCorruption',
    'NewFrontierTirecz',
    'ServiceOfYalaharDiseasedTrio',
    'ServiceOfYalaharAzerus',
    'ServiceOfYalaharQuaraLeaders',
    'InquisitionBosses',
    'InquisitionUngreez',
    'KillingInTheNameOfKills',
	'KillingInTheNameOfKillss',
	'KillingInTheNameOfKillsss',
    'MastersVoiceServants',
    'SecretServiceBlackKnight',
    'ThievesGuildNomad',
    'WotELizardMagistratus',
    'WotELizardNoble',
    'WotEKeeper',
	'Maxxed',
    'WotEBosses',
    'WotEZalamon',
    'WarzoneThree',
    'PlayerDeath',
    'AdvanceSave',
    'bossesWarzone',
    'AdvanceRookgaard',
    'PythiusTheRotten',
    'DropLoot',
    'Yielothax',
    'BossParticipation',
    'Energized Raging Mage',
    'Raging Mage', 
    'modalMD1',
	'VibrantEgg',
    'DeathCounter',
    'KillCounter',
    'bless1',
	'lowerRoshamuul',
	'SpikeTaskQuestCrystal',
	'SpikeTaskQuestDrillworm',
	'petlogin',
	'Idle',
	'petthink'
}
 
local function onMovementRemoveProtection(cid, oldPosition, time)
    local player = Player(cid)
    if not player then
        return true
    end
 
    local playerPosition = player:getPosition()
    if (playerPosition.x ~= oldPosition.x or playerPosition.y ~= oldPosition.y or playerPosition.z ~= oldPosition.z) or player:getTarget() then
        player:setStorageValue(Storage.combatProtectionStorage, 0)
        return true
    end
 
    addEvent(onMovementRemoveProtection, 1000, cid, oldPosition, time - 1) 
end
 
function onLogin(player)
	local loginStr = 'Welcome to ' .. configManager.getString(configKeys.SERVER_NAME) .. '!'
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. ' Please choose your outfit.'		
		player:setBankBalance(0)

		if player:getSex() == 1 then
			player:setOutfit({lookType = 128, lookHead = 78, lookBody = 106, lookLegs = 58, lookFeet = 76})		
		else
			player:setOutfit({lookType = 136, lookHead = 78, lookBody = 106, lookLegs = 58, lookFeet = 76})	
		end

		player:sendTutorial(1)
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format('Your last visit was on %s.', os.date('%a %b %d %X %Y', player:getLastLoginSaved()))
	end
 
    player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
   
    local playerId = player:getId()
    
    player:loadSpecialStorage()

    --[[-- Maintenance mode
    if (player:getGroup():getId() < 2) then
        return false
    else
        
    end--]]

    if (player:getGroup():getId() >= 4) then
        player:setGhostMode(true)
    end

    -- Stamina
    nextUseStaminaTime[playerId] = 1

    -- EXP Stamina
    nextUseXpStamina[playerId] = 1

    -- Prey Stamina
    nextUseStaminaPrey[playerId+1] = {Time = 1}
    nextUseStaminaPrey[playerId+2] = {Time = 1}
    nextUseStaminaPrey[playerId+3] = {Time = 1}

    -- Prey Data
    if (player:getVocation():getId() ~= 0) then
        local columnUnlocked = getUnlockedColumn(player)
        if (not columnUnlocked) then
            columnUnlocked = 0
        end

        for i = 0, columnUnlocked do
            sendPreyData(player, i)
        end
    end

    if (player:getAccountType() == ACCOUNT_TYPE_TUTOR) then
        local msg = [[:: Tutor Rules ::
            1*>3 Warnings you lose the job.
            2*>Without parallel conversations with players in Help, if the player starts offending, you simply mute.
            3*>Be polite with the players in the Help and especially in the Private, try to help as much as possible.
            4*>Always log in your schedule, if you do not have a justification you will be removed from the staff.
            5*>Help is only allowed to ask questions related to tibia.
            6*>It is not allowed to divulge a team to kill or to help in quest.
            7*>You are not allowed to sell items in Help.
            8*>If the player finds a bug, ask to go to the website to send a ticket and explain in detail.
            9*>Always keep the Tutor Chat open. (required).
            10*>You finished to meet your schedule, saw that has no online tutor, you communicate with any CM in-game or ts and is no help to anyone login, if you give.
            11*>Always keep a great English in Help, we want tutors who support, not that they speak a satanic ritual.
            12*>If you see a tutor doing something that violates the rules, take a print and send it to the superiors."
            -- Comandos --
            Mutar Player: /mute nick,90. (90 segundos)
            Desmutar Player: /unmute nick.
            -- Comandos --]]
        player:popupFYI(msg)
    end
   
 	-- OPEN CHANNERLS (ABRIR CHANNELS)
	if table.contains({"Rookgaard", "Dawnport"}, player:getTown():getName())then
		--player:openChannel(7) -- help channel
		player:openChannel(3) -- world chat
		player:openChannel(6) -- advertsing rook main
	else
		--player:openChannel(7) -- help channel
		player:openChannel(3) -- world chat
		player:openChannel(5) -- advertsing main
	end

      --
    -- Rewards
    local rewards = #player:getRewardList()
    if(rewards > 0) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You have %d %s in your reward chest.", rewards, rewards > 1 and "rewards" or "reward"))
    end
 
    -- Update player id
    local stats = player:inBossFight()
    if stats then
        stats.playerId = player:getId()
    end
 
    -- fury gates
    local messageType = nil
    if (player:getClient().os == 3 or
    	player:getClient().os == 5) then
    	messageType = MESSAGE_EVENT_ADVANCE
    end

    if Game.getStorageValue(9710) == 1 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Venore Today.')
    elseif Game.getStorageValue(9711) == 2 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Abdendriel Today.')
    elseif Game.getStorageValue(9712) == 3 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Thais Today.')
    elseif Game.getStorageValue(9713) == 4 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Carlin Today.')
    elseif Game.getStorageValue(9714) == 5 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Edron Today.')
    elseif Game.getStorageValue(9716) == 6 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Kazordoon Today.')
    end

	player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_ORANGE, '[BUGS?] Report it in www.uatibia.com')
   
    -- Events
    for i = 1, #events do
        player:registerEvent(events[i])
    end
 
 
    if player:getStorageValue(Storage.combatProtectionStorage) <= os.time() then
        player:setStorageValue(Storage.combatProtectionStorage, os.time() + 10)
        onMovementRemoveProtection(playerId, player:getPosition(), 10)
    end

	-- Exp stats
	local staminaMinutes = player:getStamina()
	local Boost = player:getExpBoostStamina()
	if staminaMinutes > 2400 and player:isPremium() and Boost > 0 then
		player:setBaseXpGain(200) -- 200 = 1.0x, 200 = 2.0x, ... premium account		
	elseif staminaMinutes > 2400 and player:isPremium() and Boost <= 0 then
		player:setBaseXpGain(150) -- 150 = 1.0x, 150 = 1.5x, ... premium account	
	elseif staminaMinutes <= 2400 and staminaMinutes > 840 and player:isPremium() and Boost > 0 then
		player:setBaseXpGain(150) -- 150 = 1.5x		premium account
	elseif staminaMinutes > 840 and Boost > 0 then
		player:setBaseXpGain(150) -- 150 = 1.5x		free account
	elseif staminaMinutes <= 840 and Boost > 0 then
		player:setBaseXpGain(100) -- 50 = 0.5x	all players	
	elseif staminaMinutes <= 840 then
		player:setBaseXpGain(50) -- 50 = 0.5x	all players	
	end

    return true
end
