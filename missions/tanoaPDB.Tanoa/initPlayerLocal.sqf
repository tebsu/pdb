setTerrainGrid 3.125;

_thisPlayer = _this select 0;

removeAllWeapons _thisPlayer;
removeGoggles _thisPlayer;
removeHeadgear _thisPlayer;
removeVest _thisPlayer;
removeUniform _thisPlayer;
removeAllAssignedItems _thisPlayer;
removeBackpack _thisPlayer;

_thisPlayer enableFatigue false;
_thisPlayer enableStamina false;
_thisPlayer allowSprint true;
_thisPlayer setCustomAimCoef 0.1;
_thisPlayer forceWalk false;

_thisPlayer addEventHandler ["Respawn", {_thisPlayer enableFatigue false; _thisPlayer forceWalk false;}];