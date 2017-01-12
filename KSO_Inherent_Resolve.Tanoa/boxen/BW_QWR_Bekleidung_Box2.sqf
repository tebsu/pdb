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
_crate addItemCargoGlobal ["G_Bandanna_shades", 20];
_crate addItemCargoGlobal ["G_Bandanna_oli", 20];
_crate addItemCargoGlobal ["G_Balaclava_lowprofile", 20];
_crate addItemCargoGlobal ["BWA3_G_Combat_Clear", 10];
_crate addItemCargoGlobal ["G_Bandanna_tani", 10];
_crate addItemCargoGlobal ["PBW_Brille_schwarz", 10];
_crate addItemCargoGlobal ["BWA3_Beret_Falli", 25];
_crate addItemCargoGlobal ["PBW_barett_fespaeh", 10];
_crate addItemCargoGlobal ["PBW_barett_ksk", 10];
_crate addItemCargoGlobal ["PBW_barett_nsch", 10];
_crate addItemCargoGlobal ["H_Booniehat_mcamo", 10];
_crate addItemCargoGlobal ["H_Shemag_olive_hs", 10];
_crate addItemCargoGlobal ["H_Cap_headphones", 10];
_crate addItemCargoGlobal ["PBW_Balaclava_schwarzR", 10];
_crate addItemCargoGlobal ["PBW_Balaclava_beigeR", 10];
_crate addItemCargoGlobal ["PBW_shemagh_gruen", 10];
_crate addItemCargoGlobal ["VSM_FaceMask_black", 10];
_crate addItemCargoGlobal ["VSM_FaceMask_olive", 10];
_crate addItemCargoGlobal ["VSM_FaceMask_tan", 10];


	
	sleep 3600;
};






