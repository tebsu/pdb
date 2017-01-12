if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

///BW Weapons///

_crate addWeaponCargoGlobal ["hlc_rifle_g3ka4", 5];
_crate addWeaponCargoGlobal ["arifle_SPAR_03_snd_F", 10];
_crate addWeaponCargoGlobal ["BWA3_MG4", 2];
_crate addWeaponCargoGlobal ["BWA3_G82", 1];
_crate addWeaponCargoGlobal ["BWA3_G28_Assault", 3];
_crate addWeaponCargoGlobal ["arifle_SPAR_02_blk_F", 2];
_crate addWeaponCargoGlobal ["hlc_lmg_MG3KWS_b", 2];
_crate addWeaponCargoGlobal ["BWA3_MG5", 2];
_crate addWeaponCargoGlobal ["hlc_rifle_awmagnum_BL", 2];
_crate addWeaponCargoGlobal ["BWA3_Pzf3", 6];
_crate addWeaponCargoGlobal ["M32_EP1", 2];
_crate addWeaponCargoGlobal ["BWA3_G82", 1];







sleep 3600;
};
