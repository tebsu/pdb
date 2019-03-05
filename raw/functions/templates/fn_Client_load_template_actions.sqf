_interface = _this select 0;

//systemChat format["interface: %1",_interface];
//_interface remoteExec ["removeAllActions",-2];
//{_interface addAction[format["<t color='#FF2300'>--RELOAD--</t>"],{ {[_interface] execVM "fn_Server_load_template_actions.sqf"} remoteExec ["call",2,true]; }];} remoteExec ["call",-2,true];
//{_interface addAction[format["<t color='#00FF33'>--SAVE INVENTORY--</t>"],{ {[] execVM "\pdb\functions\templates\fn_Server_save_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];
//{_interface addAction[format["Load: Medic"],{ {[1] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];} remoteExec ["call",-2];



removeAllActions _interface;
_interface addAction[format["<t color='#FF2300'>--RELOAD--</t>"],{ {[_interface] execVM "fn_Server_load_template_actions.sqf"} remoteExec ["call",2,true]; }];
_interface addAction[format["<t color='#00FF33'>--SAVE INVENTORY--</t>"],{ {[] execVM "\pdb\functions\templates\fn_Server_save_template.sqf"} remoteExec ["call",2]; }];
_interface addAction[format["Load: Medic"],{ {[1] execVM "\pdb\functions\templates\fn_Server_load_template.sqf"} remoteExec ["call",2]; }];