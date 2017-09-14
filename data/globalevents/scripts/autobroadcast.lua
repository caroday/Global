-- 

function onThink(interval, lastExecution)
    local MESSAGE = {
		"[COMMANDS] !buyhouse - !leavehouse - !sellhouse - !uptime - !outfit - !online - !serverinfo - /citywar - !bomb - !snowball - !cast - !stopcast - !spectator.",
		"[BUGS?] http://uatibia.com/forum/index.php?/forum/44-global/",
		"[TIBIA CLIENT UPDATED] http://uatibia.com/global/ Use our Own Client to avoid debugs and can use all the functions of the server.",
		"[SECURITY] Do not use the same passwords of others otservers, they can hack your account (use diferent accounts).",
		"[RULES] http://www.uatibia.com Read the rules to avoid punishments.",
		"[FACEBOOK] https://www.facebook.com/uatibia",
		"[TWITTER] https://twitter.com/uatibia",
		"[PORTAL] http://portal.uatibia.com",
		"[TEAMSPEAK] Look our voice channel server: uatibia.ts3dns.eu",
		"[OPENSOURCE] We are open source: https://github.com/Tatuy/Global",
    }
    Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_EVENT_ADVANCE) 
    return true
end
