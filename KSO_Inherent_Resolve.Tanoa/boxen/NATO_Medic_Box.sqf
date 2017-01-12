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

_crate addItemCargoGlobal ["ACE_fieldDressing", 200];
_crate addItemCargoGlobal ["ACE_packingBandage", 500];
_crate addItemCargoGlobal ["ACE_elasticBandage", 500];
_crate addItemCargoGlobal ["ACE_quikclot", 200];
_crate addItemCargoGlobal ["ACE_tourniquet", 100];
_crate addItemCargoGlobal ["ACE_morphine", 200];
_crate addItemCargoGlobal ["ACE_atropine", 200];
_crate addItemCargoGlobal ["ACE_epinephrine", 200];



sleep 3600;
};