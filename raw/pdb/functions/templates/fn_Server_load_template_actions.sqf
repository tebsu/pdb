pdb_template_interface remoteExec ["removeAllActions",-2];
{pdb_template_interface addAction[format["<t color='#00FF33'>--SAVE INVENTORY--</t>"],{ {[] execVM "\pdb\functions\templates\fn_Server_save_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];
//{pdb_template_interface addAction[format["<t color='#00FF33'>--Load MEDIC--</t>"],{ {[1] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];

_sql = "extDB3" callExtension format["0:SQL:SELECT id, invName FROM wi_inventory_templates"];

_aResult = _sql splitString "[,]";
_iCountItems = (count _aResult - 1) / 2;

['start'] execVM "\pdb\functions\misc\debug.sqf";

if(_iCountItems > 0) then {
	for "_i" from 0 to _iCountItems step 2 do 
	{
		_id = _aResult select (_i+1);
		_name = call compile (_aResult select (_i+2));
		_name2 = format["<t color='#00FF33'>--Load %1--</t>", _name];
		[_id] execVM "\pdb\functions\misc\debug.sqf";
		{pdb_template_interface addAction["test",{ {[_id] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];
		

	};
	
};
['end'] execVM "\pdb\functions\misc\debug.sqf";