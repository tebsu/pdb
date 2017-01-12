if (! isServer) exitWith {};


_crate = _this select 0;


while {alive _crate} do
{

	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;


_crate addItemCargoGlobal ["ACE_M26_Clacker", 15];
_crate addItemCargoGlobal ["ACE_Clacker", 15];
	
_crate addItemCargoGlobal ["ACE_DefusalKit", 15];
_crate addItemCargoGlobal ["ACE_Clacker", 15];
_crate addItemCargoGlobal ["ACE_Clacker", 15];


_crate addMagazineCargoGlobal ["BWA3_DM51A1", 30];
_crate addMagazineCargoGlobal ["Chemlight_green", 40];
_crate addMagazineCargoGlobal ["Chemlight_red", 40];
_crate addMagazineCargoGlobal ["SmokeShell", 100];
_crate addMagazineCargoGlobal ["SmokeShellGreen", 60];
_crate addMagazineCargoGlobal ["SmokeShellRed", 60];
_crate addMagazineCargoGlobal ["ACE_M84", 40];
_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 10];
_crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 10];





	sleep 3600;
};

