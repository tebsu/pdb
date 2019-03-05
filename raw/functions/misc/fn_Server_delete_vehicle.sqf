_pdb_veh_del_marker_pos = getMarkerPos "pdb_delete_vehicle";
_vehicle_check = nearestObjects[_pdb_veh_del_marker_pos,pdb_allowed_veh,50];

if(!isNil "_vehicle_check") then {
	{
	deleteVehicle _x;
	sleep 1;
	} foreach _vehicle_check
};
