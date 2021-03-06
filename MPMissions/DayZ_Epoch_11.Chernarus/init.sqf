/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
//load configs and options
execVM "scriptcontrol.sqf";


//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];

//Load in compiled functions
call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";	
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "dayz_code\system\player_monitor.sqf";	
	
	// Epoch Admin Tools
	if ( !((getPlayerUID player) in AdminList) && !((getPlayerUID player) in ModList)) then 
	{
	  [] execVM "admintools\antihack\antihack.sqf"; // Epoch Antihack with bypass
	};

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	
};
// Zupa Currnecy
execVM "gold\init.sqf";
execVM "gold\addbankmarkers.sqf";

//#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";


#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"
if(ServerWelcomeCreditsScript)then{
	//Welcome Credits
	 execVM "ServerWelcomeCredits.sqf";
};
	//DayZ Watermark
if(WaterMarkScript)then{
	if (!isNil "server_name") then {
	  [] spawn {
		  waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		  waituntil {!(isNull (findDisplay 46))};
		  5 cutRsc ["wm_disp","PLAIN"];
		  ((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
	  };
	};
};

if (!isDedicated) then {
	if (DZE_AsReMix_PLAYER_HUD) then {
		execVM "addons\playerhud\playerHud.sqf"//AsReMix Player HUD
	};
};
//wait before admin script is active
sleep 5; // wait 5 seconds before starting tools
if(adminScript)then{
	// Epoch Admin Tools
	[] execVM "admintools\Activate.sqf";
	[] execVM "admintools\tools\adminbuild\keypress.sqf";
};