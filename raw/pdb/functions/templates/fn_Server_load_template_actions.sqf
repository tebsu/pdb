pdb_template_interface remoteExec ["removeAllActions",-2]; 
{pdb_template_interface addAction[format["<t color='#00FF33'>--SAVE INVENTORY--</t>"],{ {[] execVM "\pdb\functions\templates\fn_Server_save_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2]; 
//{pdb_template_interface addAction[format["<t color='#00FF33'>--Load MEDIC--</t>"],{ {[1] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2]; 
 
 publicVariable "_id";
 publicVariable "_name";
 
_sql = "extDB3" callExtension format["0:SQL:SELECT id, invName FROM wi_inventory_templates"]; 
 
_aResult = _sql splitString "[,]"; 
_iCountItems = (count _aResult - 1); 
 
if(_iCountItems > 0) then { 
 for "_i" from 1 to _iCountItems step 2 do  
 { 
  _id = (_aResult select (_i+0));
  _name = str(format ["%1",_aResult select (_i+1)]);  
  publicVariable "_id";
  publicVariable "_name";

  {pdb_template_interface addAction["_name",{ {[_id] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2]; 

	[_name] execVM "\pdb\functions\misc\debug.sqf";
	
 }; 
}; 

