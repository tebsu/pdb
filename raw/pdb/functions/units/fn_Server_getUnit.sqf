/*
*	From Database to Arma 3 Unit
*/
pdb_debug_unit = "initializing saving..";
publicVariable "pdb_debug_unit";
pdb_debug_unit = format["_Player is %1. (getUnit)",_this select 0];
publicVariable "pdb_debug_unit";

_Player = _this select 0;
waitUntil {isPlayer _Player};
sleep 1;

_playerUID = format ["%1",(getPlayerUID _Player)];
_sql_res = "extDB3" callExtension format["0:SQL:SELECT playerRank,playerAdmin,playerPos,playerDir FROM player p LEFT JOIN player_mission_connection pmc ON (pmc.playerUID = p.playerUID AND pmc.mission_FK = '%2') WHERE p.playerUID = '%1'",_playerUID,pdb_mission_fk];
_sql_res2 = call compile ("extDB3" callExtension format["0:SQL:SELECT playerInv FROM player p LEFT JOIN player_mission_connection pmc ON (pmc.playerUID = p.playerUID AND pmc.mission_FK = '%2') WHERE p.playerUID = '%1'",_playerUID,pdb_mission_fk]);

sleep 5;
[ [[_Player,_playerUID,_sql_res,_sql_res2],"\pdb\functions\units\fn_Client_getUnit.sqf"],"BIS_fnc_execVM",false,false ] call BIS_fnc_MP;