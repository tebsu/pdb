

call compile ("extDB3" callExtension "9:RESET");
call compile ("extDB3" callExtension "9:ADD_DATABASE:SRU_DB");
call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:SRU_DB:SQL:SQL");


_pdb_marker_pos = getMarkerPos "pdb_refill";
_object = nearestObjects[_pdb_marker_pos,["all"],2];
_object = _object select 0;

_objClassName = str formatText ["%1 on %3.%2", (typeof (_object)),worldName,missionName];
_objItemCargo = str formatText ["%1", (getItemCargo _object)];
_objBachpackCargo = str formatText ["%1", (getBackpackCargo _object)];
_objMagazineCargo = str formatText ["%1", (getMagazineCargo _object)];
_objWeaponCargo = str formatText ["%1", (getWeaponCargo _object)];

_sql_res = "extDB3" callExtension format["0:SQL:INSERT INTO inventory_templates SET invItem = '%1',invBackpack = '%2',invMagazine = '%3',invWeapon = '%4', invName = '%5'",_objItemCargo,_objBachpackCargo,_objMagazineCargo,_objWeaponCargo,_objClassName];

systemChat format["Template stored to DB as '%1'",_objClassName];