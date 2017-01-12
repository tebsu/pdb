// Settings
0 fadeRadio 0;
enableRadio false;
enableSentences false;
enableSaving [false, false];

// Init
player enableFatigue false;
player enableStamina false;
player allowSprint true;
player setCustomAimCoef 0.1;

// Logistik 
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

// Taskforce Radio
#include "\task_force_radio\functions\common.sqf";
if ((isServer) or (isDedicated)) then {
    tf_no_auto_long_range_radio = true;
    publicVariable "tf_no_auto_long_range_radio";
    tf_same_sw_frequencies_for_side = true;
    publicVariable "tf_same_sw_frequencies_for_side";
    tf_same_lr_frequencies_for_side = true;
    publicVariable "tf_same_lr_frequencies_for_side";

    _settingsSwWest = false call TFAR_fnc_generateSwSettings;
    _settingsSwWest set [2, ["100","190.1","190.2","190","180.1","180.2","180","157.8"]];
    tf_freq_west = _settingsSwWest;

     _settingsLrWest = false call TFAR_fnc_generateLrSettings;
     _settingsLrWest set [2, ["50","57.8","57.9","60.1","60.2"]];
     tf_freq_west_lr = _settingsLrWest;

}; 



/* hide objects on map */


_markername = "oldATC";
_terrainobjects = nearestTerrainObjects
	[(getMarkerPos _markername),
	[],
	(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects;

_markername = "remHangar3";
_terrainobjects = nearestTerrainObjects
	[(getMarkerPos _markername),
	[],
	(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects;

_markername = "remHangar2";
_terrainobjects = nearestTerrainObjects
	[(getMarkerPos _markername),
	[],
	(getmarkersize _markername)select 0];
{hideObjectGlobal _x} foreach _terrainobjects;
