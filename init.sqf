// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSentences false;

// ====================================================================================

// F3 - MapClick Teleport
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_mapClickTeleport_Uses = 0;					// How often the teleport action can be used. 0 = infinite usage.
// f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
// f_var_mapClickTeleport_GroupTeleport = false; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
// f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
// [] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setTeamColours = [] execVM "f\setTeamColours\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - F3 Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================

// F3 - Automatic Body Removal
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_removeBodyDelay = 120;
f_var_removeBodyDistance = 360;
f_var_doNotRemoveBodies = [];
[] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - Dynamic View Distance
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_viewDistance_default = 1250;
// f_var_viewDistance_tank = 2000;
// f_var_viewDistance_car = 2000;
// f_var_viewDistance_rotaryWing = 2500;
// f_var_viewDistance_fixedWing = 5000;
// f_var_viewDistance_crewOnly = true;
// [] execVM "f\dynamicViewDistance\f_setViewDistanceLoop.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2],false] call f_fnc_authorisedCrewCheck}];
// VehicleName addEventhandler ["GetIn", {[_this,["UnitClass1","UnitClass2"],false] call f_fnc_authorisedCrewCheck}];

// ====================================================================================

// F3 - Casualties Cap
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [[GroupName or SIDE],100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";
// [[GroupName or SIDE],100,{code}] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// BLUFOR > NATO
[BLUFOR,100,2] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// OPFOR > CSAT
[OPFOR,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\casualtiesCap\f_CasualtiesCapCheck.sqf";

// ====================================================================================

// F3 - AI Skill Selector
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)


f_var_civAI = independent; // Optional: The civilian AI will use this side's settings
[] execVM "f\setAISKill\f_setAISkill.sqf";

// ====================================================================================

// F3 - Assign Gear AI
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================

// F3 - Name Tags
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\nametag\f_nametags.sqf";

// ====================================================================================

// F3 - Group E&E Check
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [side,ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";
// [["Grp1","Grp2"],ObjectName or "MarkerName",100,1] execVM "f\EandEcheck\f_EandECheckLoop.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\safeStart\f_safeStart.sqf";

// ====================================================================================

// F3 - JIP setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - AI Unit Caching
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[30] spawn f_fnc_cInit;

// Note: Caching aggressiveness is set using the f_var_cachingAggressiveness variable; possible values:
// 1 - cache only non-leaders and non-drivers
// 2 - cache all non-moving units, always exclude vehicle drivers
// 3 - cache all units, incl. group leaders and vehicle drivers
f_var_cachingAggressiveness = 2;

// ====================================================================================

// F3 - Radio Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\radios\radio_init.sqf";

// ====================================================================================

// F3 - Medical Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// SWS Config Settings
// How many extra FirstAidKits (FAKS) each player should receive when using the F3 Simple Wounding System:
f_wound_extraFAK = 2;

[] execVM "f\medical\medical_init.sqf";

// ====================================================================================

{
	if (!isPlayer _x) then {
		(group _x addWaypoint [position _x, 0]) setWaypointType "GETIN NEAREST";
		(group _x addWaypoint [getMarkerPos "rearm", 0]) setWaypointType "MOVE";
	};
} forEach playableUnits;

if (hasInterface and side player == west) then {
    cutRsc ["BluforIcon","PLAIN",0,false];
};
if (hasInterface and side player == east) then {
    cutRsc ["RedforIcon","PLAIN",0,false];
};

_bluHelis = ["VehNATO_AH"] call ws_fnc_collectObjects;
_redHelis = ["VehCSAT_AH"] call ws_fnc_collectObjects;

{
	_x addEventHandler ["GetIn", {
		if (_this select 2 == player) then {
			_bluHelis = ["VehNATO_AH"] call ws_fnc_collectObjects;
			_redHelis = ["VehCSAT_AH"] call ws_fnc_collectObjects;
			{
				if (assignedVehicle player != _x) then {
					[_x, "BLUE"] execVM "sidelight.sqf";
				};
			} forEach _bluHelis;
			{ [_x, "RED"] execVM "sidelight.sqf"; } forEach _redHelis;
		};
	}];
} forEach _bluHelis;

{
	_x addEventHandler ["GetIn", {
		if (_this select 2 == player) then {
			_bluHelis = ["VehNATO_AH"] call ws_fnc_collectObjects;
			_redHelis = ["VehCSAT_AH"] call ws_fnc_collectObjects;
			{
				if (assignedVehicle player != _x) then {
					[_x, "RED"] execVM "sidelight.sqf";
				};
			} forEach _redHelis;
			{ [_x, "BLUE"] execVM "sidelight.sqf"; } forEach _bluHelis;
		};
	}];
} forEach _redHelis;

_bluMen = ["UnitNATO_AH"] call ws_fnc_collectObjects;
_redMen = ["UnitCSAT_AH"] call ws_fnc_collectObjects;
{
    if (_x != player) then {[_x,"BLUE",1] execVM "sidelight.sqf"};
} forEach _bluMen;
{
    if (_x != player) then {[_x,"RED",1] execVM "sidelight.sqf"};
} forEach _redMen;


{

	if(!isMultiplayer) then {
		f_param_backpacks = 0;
	};

	_x addAction ["Refuel",{_this select 0 setFuel 1},[],0,false,false,""," driver  _target == _this"];
    clearWeaponCargoGlobal _x;
    clearMagazineCargoGlobal _x;

		_x removeMagazineTurret ["120Rnd_CMFlare_Chaff_Magazine", [-1]];

		_x addMagazineTurret ["300Rnd_CMFlare_Chaff_Magazine", [-1]];
		_x addMagazineTurret ["300Rnd_CMFlare_Chaff_Magazine", [-1]];

		_x removeWeaponTurret ["Bomb_03_Plane_CAS_02_F",[-1]];
		_x removeMagazineTurret ["2Rnd_Bomb_03_F", [-1]];
		_x removeWeaponTurret ["Rocket_03_AP_Plane_CAS_02_F",[-1]];
		_x removeMagazineTurret ["20Rnd_Rocket_03_AP_F", [-1]];
		_x removeWeaponTurret ["Rocket_03_HE_Plane_CAS_02_F",[-1]];
		_x removeMagazineTurret ["20Rnd_Rocket_03_HE_F", [-1]];
		_x removeWeaponTurret ["Missile_AGM_01_Plane_CAS_02_F",[-1]];
		_x removeMagazineTurret ["4Rnd_Missile_AGM_01_F", [-1]];
		_x removeWeaponTurret ["Missile_AA_03_Plane_CAS_02_F",[-1]];
		_x removeMagazineTurret ["2Rnd_Missile_AA_03_F", [-1]];
		_x removeWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[-1]];
		_x removeMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F", [-1]];

	switch (f_param_backpacks) do {
        case 1: {
					_x addWeaponTurret ["Cannon_30mm_Plane_CAS_02_F",[-1]];
					_x addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];
					_x addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];
					_x addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];
					_x addMagazineTurret ["500Rnd_Cannon_30mm_Plane_CAS_02_F",[-1]];
        };
        case 2: {
					_x addWeaponTurret ["Gatling_30mm_Plane_CAS_01_F",[-1]];
					_x addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];
					_x addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];
					_x addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];
					_x addMagazineTurret ["1000Rnd_Gatling_30mm_Plane_CAS_01_F",[-1]];
        };
        default {
					_x addWeaponTurret ["Twin_Cannon_20mm",[-1]];
					_x addMagazineTurret ["2000Rnd_20mm_shells",[-1]];
					_x addMagazineTurret ["2000Rnd_20mm_shells",[-1]];
				};
    };
} forEach (_bluhelis + _redHelis);

// for VehNATO_AHX, check if NATO_AHX is in this match, otherwise get rid of it
{
	if (isNil ("Unit" + ([format ["%1", _x], 3, count (format ["%1", _x])-1] call BIS_fnc_trimString))) then {
		deleteVehicle _x;
	};
} forEach (_bluhelis + _redHelis);

waitUntil {!isNil "param_submode"};
if (isServer && param_submode == 1) then {
    [] execVM "funmarine.sqf";
};
