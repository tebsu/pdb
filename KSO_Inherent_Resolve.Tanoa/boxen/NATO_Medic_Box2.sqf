/////////   Sanitäter Box

if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

///Sanitäter/// 



_crate addItemCargoGlobal ["ACE_plasmaIV", 200];
_crate addItemCargoGlobal ["ACE_bloodIV_500", 50];
_crate addItemCargoGlobal ["ACE_bloodIV", 50];
_crate addItemCargoGlobal ["ACE_salineIV", 50];
_crate addItemCargoGlobal ["ACE_salineIV_500", 50];
_crate addItemCargoGlobal ["ACE_plasmaIV_500", 50];
_crate addItemCargoGlobal ["ACE_personalAidKit", 50];





sleep 3600;
};