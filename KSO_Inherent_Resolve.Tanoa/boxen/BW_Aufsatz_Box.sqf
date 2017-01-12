/////////   Aufsätze

if (! isServer) exitWith {};


_crate = _this select 0;


while {alive _crate} do
{




clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

///Aufsätze///

_crate addItemCargoGlobal ["BWA3_optic_EOTech_Mag_Off", 15];
_crate addItemCargoGlobal ["BWA3_optic_EOTech", 10];
_crate addItemCargoGlobal ["RKSL_optic_LDS", 15];
_crate addItemCargoGlobal ["optic_DMS", 10];
_crate addItemCargoGlobal ["HLC_Optic_G36dualoptic35x2d", 10];
_crate addItemCargoGlobal ["acc_mas_pointer_IR_top_b", 10];
_crate addItemCargoGlobal ["optic_MRD", 10];
_crate addItemCargoGlobal ["optic_MRCO", 5];
_crate addItemCargoGlobal ["BWA3_optic_24x72", 3];
_crate addItemCargoGlobal ["RKSL_optic_PMII_312_sunshade", 3];
_crate addItemCargoGlobal ["RKSL_optic_PMII_525", 3];
_crate addItemCargoGlobal ["BWA3_optic_20x50", 3];
_crate addItemCargoGlobal ["BWA3_optic_ZO4x30", 15];
_crate addItemCargoGlobal ["BWA3_optic_NSV600", 20];
_crate addItemCargoGlobal ["BWA3_optic_IRV600", 5];
_crate addItemCargoGlobal ["BWA3_optic_NSV80", 3];
_crate addItemCargoGlobal ["BWA3_acc_VarioRay_irlaser", 10];
_crate addItemCargoGlobal ["BWA3_acc_LLM01_irlaser", 10];
_crate addItemCargoGlobal ["BWA3_muzzle_snds_G28", 20];
_crate addItemCargoGlobal ["BWA3_muzzle_snds_G36", 15];
_crate addItemCargoGlobal ["muzzle_snds_acp", 10];
_crate addItemCargoGlobal ["hlc_muzzle_snds_g3", 5];
_crate addItemCargoGlobal ["bipod_01_F_blk", 10];



sleep 3600;
};

