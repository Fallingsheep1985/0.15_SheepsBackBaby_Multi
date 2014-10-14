//Script Control - Allows you to customize the repack by turning certain scripts on or off - true = on /false = off
// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxVehicleLimit = 300; // Default = 50
MaxDynamicDebris = 500; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 
dayz_paraSpawn = false;
dayz_minpos = -1; 
dayz_maxpos = 16000;
dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;
dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = true; // can players tame dogs
DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100
DZE_BuildOnRoads = true; // can players build on roads 
DZE_requireplot = 1;
DZE_teleport = [14000,14000,14000,14000,14000];
DZE_StaticConstructionCount = 1;
DZE_FriendlySaving = true;
DZE_TRADER_SPAWNMODE = false;
DZE_DeathMsgGlobal = true;
DZE_DeathMsgTitleText = true;
DZE_DeathMsgSide = true;
DZE_BackpackGuard = false; //Default = true, true to enable, false to disable - wipes backpack on combat/ALT+F4 logging
DZE_ForceNameTagsOff = false;
DZE_R3F_WEIGHT = false; //use weight system
DZE_PlotPole = [100,115];//how big an area should the plot pole cover	
DZE_BuildingLimit = 400;//how many items can a player build
DZE_PlayerZed = false; // should players have chance of becoming a ZOMBIE when they respawn after death
DZE_LootSpawnTimer = 10;// in minutes
DZE_MissionLootTable = true; //Custom Loot Tables

//Self blood bag
DZE_selfTransfuse = true; 
DZE_selfTransfuse_Values = [
6000, //Blood amount
 10,  // Chance of Infection
300 //Cooldown Timer
];
dayz_fullMoonNights = true;

DZE_ConfigTrader = true; //must have Database traders setup if you turn this off!
DZE_AsReMix_PLAYER_HUD = true; //AsReMix Player HUD

//Plot pole 4 life
DZE_PlotOwnership = true;
DZE_APlotforLife = true;
DZE_modularBuild = true;

//Build Vectors
DZE_noRotate = []; //Objects that cannot be rotated. Ex: DZE_noRotate = ["VaultStorageLocked"]
DZE_curPitch = 45; //Starting rotation angle. Only 1, 5, 45, or 90.

//Optional, only if you are using Admin Build
WG_adminBuild = Adminlist; //Fill with player UID's

//Overpoch on (modifies loot and traders to sell/spawn overwatch items)
Overpoch = false;

//Server Name
if(Overpoch)then{
	server_name = "0.15 - Overpoch Chernarus";
}else{
	server_name = "0.15 - Epoch Chernarus";
};

//Admintools
AdminScript = true;
//Welcome credits
ServerWelcomeCreditsScript = true;
//Watermark ( bottom left of screen)
WaterMarkScript = true;


//NOT YET ADDED

//CAGN Safezones
SafezoneScripts = true;
//DZGM (Group Management)
DZGMScript = true;
//Regen Blood
RegenBloodScript = true;
//EVR Blowout
EVRBlowoutScript = true;
//Journal 
JournalScript = true;
//Help/Rules
HelpScript = true;
//Heroperks
HeroPerkScript = true;
//Fast Roping
FastropeScript = true;
//Harvest Hemp
HarvestHempScript = true;
//Lights
LightsScripts = true;
//Snow Storm
SnowScript = true;
//Ground Fog
GroundFogScript = false;//FPS
//Wind Dust
WindDustScript = false;//FPS
//Exploded vehicles drop loot
ExplodedVehicleLootScript = false;//Dosnt work yet
//Walk Amongst Dead
WalkAmongstDeadScript = true;
//Debug Monitor
DebugMonitorScript = true;
//HeliLift
HeliLiftScript = true;
//DZAI
DZAIScript = true;
//WAI
WAIScript = true;
//DZMS
DZMSScript = true;
//VASP
VASPScript = true;
//Arrest
ArrestScript = true;
//Animated SUV and MV22
AnimatedSUVMV22 = true;
//Taunt Zombies
TauntZombiesScript = true;
//Bury Human
BuryHumanScript = true;
//Burn Tents
BurnTentsScript = true;
//Tent Heal
TentHealScript = true;
//Rob Bank - bank will still be on map just cant rob it
RobBankScript = true;
//Drink Water
DrinkWaterScript = true;
//Anti-Zombie Emitter
AntiZombieEmitterScript = true;
//Zombie Bait
ZombieBaitScript = true;
//Zombie Bomb
ZombieBombScript = true;
//Take Clothes
TakeClothesScript = true;
//Suicide
SuicideScript = true;
//Deploy Bike/MotorBike/Mozzie
DeployBikeScript = true;
//Towing
TowingScript = true;
//Base Jump
BaseJumpScript = true;
//Service Points
ServicePointScript = true;
//NOS
NOSScript = true;
//Crafting
CRAFTINGSCRIPT = true;
//Carepackages (100oz Briefcase)
CarepackageScript = true;
//SirenS
SirenScript = true;
//Elevator
ElevatorScript = true;
//Zombie Trucks
ZombieTruckScript = true;
//trade from vehicle
TradeFromVehicleScript = true;
//EVAC chopper
JAEMScript = true;