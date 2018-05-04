-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp-enforced"
hotkeyAimbotEnabled = true
protectionLevel = 100
killsToRedSkull = 6
killsToBlackSkull = 10
pzLocked = 60 * 1000
removeChargesFromRunes = false
removeChargesFromPotions = true
removeWeaponAmmunition = false
removeWeaponCharges = false
timeToDecreaseFrags = 4 * 60 * 60 * 1000
whiteSkullTime = 7 * 60 * 1000
stairJumpExhaustion = 500
experienceByKillingPlayers = true
expFromPlayersLevelRange = 75

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
ip = "159.203.78.218"
bindOnlyGlobalAddress = false
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 0
motd = "Welcome to Ultima Alianza Tibia Global RPG ONLINE: \n \n www.uatibia.com \n\n Follow us in facebook www.facebook.com/uatibia and twitter www.twitter.com/uatibia and get the official \n source for news, tips and good assistance for the game.\n Join the community in our forums platform: www.uatibia.com/forum\n\n *Have fun! \n\n\n The Administration."
onePlayerOnlinePerAccount = false
allowClones = false
serverName = "UATibia"
statusTimeout = 5 * 1000
replaceKickOnLogin = true
maxPacketsPerSecond = 1000
enableLiveCasting = true
liveCastPort = 7173

-- Store in-Game Config
coinPacketSize = 1
coinImagesURL = "http://uatibia.com/global/images/store/"

-- PVP-Expert Config
expertPvp = false

-- Depot Limit
freeDepotLimit = 2000
premiumDepotLimit = 10000
depotBoxes = 17

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 3000
houseRentPeriod = "never"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "global"
mapAuthor = "UATibia Staff"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = false
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "root"
mysqlPass = "tunelsecreto27"
mysqlDatabase = "global"
mysqlPort = 3306
passwordType = "sha1"
mysqlSock = ""

-- Misc.
allowChangeOutfit = true
freePremium = true
kickIdlePlayerAfterMinutes = 1500
maxMessageBuffer = 4
emoteSpells = false
classicEquipmentSlots = true
allowWalkthrough = true

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 1
rateSkill = 30
rateLoot = 4
rateMagic = 8
rateSpawn = 2

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = true

-- Scripts
warnUnsafeScripts = true
convertUnsafeScripts = true

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process
-- priority, valid values are: "normal", "above-normal", "high"
defaultPriority = "high"
startupDatabaseOptimization = true

-- Status server information
ownerName = "UATibia Staff"
ownerEmail = "contact@uatibia.com"
url = "http://www.uatibia.com"
location = "USA"