_object = pdb_template_interface;
_object remoteExec ["removeAllActions",-2];

_sql_res = "extDB3" callExtension format["0:SQL:SELECT id,invName FROM inventory_templates"];
_sql_res = _sql_res splitString "[,]";

_iCountItems = (count _sql_res - 1);

if(_iCountItems > 0) then {
	for "_i" from 1 to _iCountItems step 2 do 
	{		
		//[_object, [format["Load: %1",(_sql_res select _i+1)], "\pdb\functions\templates\pdb_load_template.sqf", [(_sql_res select _i)]]] remoteExec ["addAction", -2, _object];
		[_object, [format["Load: %1",(_sql_res select _i+1)], {[[[(_sql_res select _i)]],"\pdb\functions\templates\pdb_load_template.sqf"],BIS_fnc_execVM] remoteExec ["call",2,false]}] remoteExec ["addAction", -2, _object];
	};
	
};

	//_object addAction ["<t color='#00FF33'>Refresh</t>", "\pdb\functions\templates\pdb_load_template_actions.sqf", [_object]];
	//[_object, ["<t color='#00FF33'>Refresh</t>", "\pdb\functions\templates\pdb_load_template_actions.sqf"]] remoteExec ["addAction", -2, _object];
	[_object, ["<t color='#00FF33'>Refresh</t>", {[[[]],"\pdb\functions\templates\pdb_load_template_actions.sqf"],BIS_fnc_execVM] remoteExec ["call",2,false]}]] remoteExec ["addAction", -2, _object];
	[_object, ["<t color='#00FF33'>SAVE</t>", {[[[]],"\pdb\functions\templates\pdb_save_template.sqf"],BIS_fnc_execVM] remoteExec ["call",2,false]}]] remoteExec ["addAction", -2, _object];
