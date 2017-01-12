if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

    _crate addMagazineCargoGlobal ["BWA3_30Rnd_556x45_G36_AP", 30];
	_crate addMagazineCargoGlobal ["BWA3_15Rnd_9x19_P8", 30];
	
	_crate addWeaponCargoGlobal ["BWA3_P8", 5];
	_crate addWeaponCargoGlobal ["hlc_rifle_G36CV", 5];
	_crate addItemCargoGlobal ["RKSL_optic_LDS", 20];
	_crate addItemCargoGlobal ["B_UavTerminal", 3];
	
	_crate addItemCargoGlobal ["ACE_ConcertinaWireCoil", 10];
	
	_crate addItemCargoGlobal ["BWA3_Beret_Pz", 2];
	_crate addItemCargoGlobal ["ACE_HandFlare_Green", 20];
	_crate addItemCargoGlobal ["ACE_HandFlare_Red", 20];
	_crate addItemCargoGlobal ["Toolkit", 20];
	_crate addItemCargoGlobal ["ACE_UAVBattery", 3];
	
	_crate addbackpackCargoGlobal ["tf_rt1523g_bwmod", 2];
	
	sleep 3600;
};