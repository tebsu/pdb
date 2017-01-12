/////////   Munition

if (! isServer) exitWith {};

_crate = _this select 0;

while {alive _crate} do
{

	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	///BW QWR Bekleidung///
_crate addItemCargoGlobal ["VSM_Scorpion_Crye_Camo", 5];
_crate addItemCargoGlobal ["VSM_Scorpion_Crye_tan_shirt_Camo", 5];
_crate addItemCargoGlobal ["VSM_Scorpion_Crye_tan_pants_Camo", 5];
_crate addItemCargoGlobal ["VSM_OGA_Crye_Camo", 5];
_crate addItemCargoGlobal ["VSM_OGA_Crye_od_Camo", 5];
_crate addItemCargoGlobal ["VSM_Multicam_Crye_Camo", 5];
_crate addItemCargoGlobal ["VSM_Multicam_Crye_tan_shirt_Camo", 5];
_crate addItemCargoGlobal ["VSM_Multicam_Crye_od_pants_Camo", 5];
_crate addItemCargoGlobal ["VSM_MulticamTropic_Crye_SS_Camo", 5];
_crate addItemCargoGlobal ["VSM_MulticamTropic_Crye_SS_tan_shirt_Camo", 5];
_crate addItemCargoGlobal ["BSK_Multitarn", 5];
_crate addItemCargoGlobal ["BSK_Wuestentarn", 5];
_crate addItemCargoGlobal ["BSK_Pancott_Greenzone", 20];
_crate addItemCargoGlobal ["BWA3_Uniform_Fleck", 20];
_crate addItemCargoGlobal ["BWA3_Uniform_Tropen", 20];
	
	sleep 3600;
};




