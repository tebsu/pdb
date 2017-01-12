if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

///BW Weapons///

_crate addWeaponCargoGlobal ["BWA3_G38_Tan", 10];
_crate addWeaponCargoGlobal ["BWA3_G38", 10];
_crate addWeaponCargoGlobal ["BWA3_G38_AG_Tan", 10];
_crate addWeaponCargoGlobal ["BWA3_G38_AG", 10];
_crate addWeaponCargoGlobal ["BWA3_G38C", 10];
_crate addWeaponCargoGlobal ["BWA3_G38C_Tan", 10];
_crate addWeaponCargoGlobal ["hlc_rifle_G36KV", 10];
_crate addWeaponCargoGlobal ["hlc_rifle_G36CTac", 10];
_crate addWeaponCargoGlobal ["hlc_rifle_g36KTac", 10];
_crate addWeaponCargoGlobal ["hlc_rifle_G36VAG36", 10];
_crate addWeaponCargoGlobal ["arifle_SPAR_01_blk_F", 10];
_crate addWeaponCargoGlobal ["arifle_SPAR_01_GL_blk_F", 10];
_crate addWeaponCargoGlobal ["hgun_P07_F", 10];
_crate addWeaponCargoGlobal ["hgun_Pistol_heavy_01_F", 10];
_crate addWeaponCargoGlobal ["BWA3_P8", 20];






sleep 3600;
};