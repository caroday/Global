-- 

function onThink(interval, lastExecution)
	local messages = {
		"[COMANDOS] !report - !pz - !kills - !bless - !aol - !buyhouse - !sellhouse - !serverinfo - !online - !uptime - !outfit.",
		"[SORTEIO] Entre agora em nosso facebook ... E participe do nosso sorteio Comartilhando vc pode ganar  1 BOOTS VIP.",
		"[BUGS] problemas ou sugest�es? Entre em nosso site e mande um Ticket!\nA cada Report v�lido de BUG's voc� recebe um bonus!",
		"[Contato] whatsapp: https://chat.whatsapp.com/EaoiRFXYxmdKqgmdQpWfg8!"
	}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_ADVANCE) 
    return true
end

