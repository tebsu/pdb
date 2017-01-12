if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	_crate addWeaponCargoGlobal ["BWA3_P8", 3];
	_crate addMagazineCargoGlobal ["BWA3_15Rnd_9x19_P8", 10];
	
	_crate addItemCargoGlobal ["BWA3_Beret_HFlieger", 3];
	_crate addItemCargoGlobal ["ACE_HandFlare_Green", 10];
	_crate addItemCargoGlobal ["ACE_HandFlare_Red", 10];
	_crate addItemCargoGlobal ["Chemlight_green", 10];
	_crate addItemCargoGlobal ["B_IR_Grenade", 10];
	_crate addItemCargoGlobal ["ACE_MapTools", 10];
	_crate addItemCargoGlobal ["ACE_EarPlugs", 3];
	_crate addItemCargoGlobal ["ACE_Flashlight_MX991", 3];
	_crate addItemCargoGlobal ["Rangefinder", 3];
	_crate addItemCargoGlobal ["tf_anprc152_3", 3];
	_crate addItemCargoGlobal ["ItemAndroid", 3];
	_crate addItemCargoGlobal ["ACE_NVG_Wide", 3];
	
	_crate addItemCargoGlobal ["FIR_pilot_vest", 5];
	_crate addItemCargoGlobal ["H_PilotHelmetHeli_B", 3];
	_crate addItemCargoGlobal ["FIR_Fighter_Pilot_USN_Nomex3", 3];
	_crate addItemCargoGlobal ["BWA3_Uniform_Helipilot", 3];
	_crate addbackpackCargoGlobal ["tf_rt1523g_bwmod", 1];
	_crate addbackpackCargoGlobal ["B_Parachute", 20];
	
	sleep 3600;
};