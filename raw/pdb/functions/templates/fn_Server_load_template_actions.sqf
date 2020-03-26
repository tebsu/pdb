pdb_template_interface remoteExec ["removeAllActions",-2];
{pdb_template_interface addAction[format["<t color='#00FF33'>--SAVE INVENTORY--</t>"],{ {[] execVM "\pdb\functions\templates\fn_Server_save_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];
//{pdb_template_interface addAction[format["<t color='#00FF33'>--Load MEDIC--</t>"],{ {[1] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];

_sql = "extDB3" callExtension format["0:SQL:SELECT id, invName FROM wi_inventory_templates"];
_aResult = _sql splitString "[,]";

_iCountItems = (count _aResult - 1) / 2;
if(_iCountItems > 0) then {
	for "_i" from 1 to _iCountItems do 
	{
		_id = call compile (_aResult select (_i+1));
		_name = call compile (_aResult select (_i+2));
		
		{pdb_template_interface addAction[format["<t color='#00FF33'>--Load %1--</t>", _name],{ {[_id] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];
	};
	
};