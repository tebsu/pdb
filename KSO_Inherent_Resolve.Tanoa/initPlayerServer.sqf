_thisPlayer = _this select 0;
waitUntil {isPlayer _thisPlayer};
[_thisPlayer]execVM "\pdb\functions\units\fn_Server_getUnit.sqf";