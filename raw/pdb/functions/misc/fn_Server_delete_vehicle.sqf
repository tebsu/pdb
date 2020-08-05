_pdb_veh_del_marker_pos = getMarkerPos "pdb_delete_vehicle";
_vehicle_check = nearestObjects[_pdb_veh_del_marker_pos,[],50];
_parentVehicleType = (_x call BIS_fnc_objectType) select 1;

if(!isNil "_vehicle_check" && _parentVehicleType in pdb_allowed_veh) then {
	{
	deleteVehicle _x;
	sleep 1;
	} foreach _vehicle_check
};
