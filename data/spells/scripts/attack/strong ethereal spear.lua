local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)

function onGetFormulaValues(player, attack, factor)
	local skillTotal = player:getEffectiveSkillLevel(SKILL_DISTANCE)
	local levelTotal = player:getLevel()
	
	return -(((skillTotal + 200) / 2) * 1.4 + (levelTotal / 8)) * 1.7, - ((skillTotal + 200) + (levelTotal / 8 * 2)) * 1.5, 0
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
