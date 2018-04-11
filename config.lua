-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp"
hotkeyAimbotEnabled = true
protectionLevel = 7
pzLocked = 60 * 1000
removeChargesFromRunes = true
removeChargesFromPotions = true
removeWeaponAmmunition = true
removeWeaponCharges = true
timeToDecreaseFrags = 12 * 60 * 60 * 1000
whiteSkullTime = 15 * 60 * 1000
stairJumpExhaustion = 2 * 1000
experienceByKillingPlayers = false
expFromPlayersLevelRange = 75
dayKillsToRedSkull = 6
weekKillsToRedSkull = 10
monthKillsToRedSkull = 20
redSkullDuration = 15
blackSkullDuration = 22
orangeSkullDuration = 3

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
ip = "159.203.78.218"
bindOnlyGlobalAddress = false
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 0
motd = "Welcome to The UATibia Global!"
onePlayerOnlinePerAccount = true
allowClones = false
serverName = "UATibia"
statusTimeout = 5 * 1000
replaceKickOnLogin = true
maxPacketsPerSecond = 25

-- Version Manual
clientVersionMin = 1100
clientVersionMax = 1157
clientVersionStr = "11.57"

-- Depot Limit
freeDepotLimit = 2000
premiumDepotLimit = 10000
depotBoxes = 17

-- GameStore
gamestoreByModules = true

-- Casting System 
enableLiveCasting = true
liveCastPort = 7173

-- Expert Pvp Config
expertPvp = false

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 1000
houseRentPeriod = "daily"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "realmap"
mapAuthor = "Cipsoft"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = true
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "root"
mysqlPass = "tunelsecreto27"
mysqlDatabase = "global"
mysqlPort = 3306
mysqlSock = ""
passwordType = "sha1"

-- Misc.
allowChangeOutfit = true
freePremium = true
kickIdlePlayerAfterMinutes = 15
idleWarningTime = 10 * 60 * 1000
idleKickTime = 15 * 60 * 1000
maxMessageBuffer = 4
emoteSpells = false
classicEquipmentSlots = false
allowWalkthrough = true
coinPacketSize = 1
coinImagesURL = "http://localhost/images/store/"
classicAttackSpeed = false

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 1
rateSkill = 20
rateLoot = 2.5
rateMagic = 7
rateSpawn = 1

-- Monster rates
rateMonsterHealth = 1.0
rateMonsterAttack = 1.0
rateMonsterDefense = 1.0

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
ownerName = "Rafael Zunniga (Tatuy)"
ownerEmail = "rafael.zunniga@gmail.com"
url = "http://www.uatibia.com"
location = "USA"
