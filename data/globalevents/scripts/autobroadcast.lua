function onThink(interval, lastExecution)
    local MESSAGE = {
		"[COMMANDS] !buyhouse - !sellhouse - !serverinfo - !online - !uptime - !outfit.",
		"[TIBIA CLIENT UPDATED] http://uatibia.com/global/ Use our Own Client to avoid debugs and can use all the functions of the server.",
		"[SECURITY] Do not use the same passwords of others otservers, they can hack your account (use diferent accounts).",
		"[RULES] http://www.uatibia.com Read the rules to avoid punishments.",
		"[FACEBOOK] https://www.facebook.com/uatibia",
		"[TWITTER] https://twitter.com/uatibia",
		"[PORTAL] http://portal.uatibia.com",
		"[OPENSOURCE] We are open source: https://github.com/Tatuy/Global",
    }
    Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_EVENT_ADVANCE) 
    return true
end
