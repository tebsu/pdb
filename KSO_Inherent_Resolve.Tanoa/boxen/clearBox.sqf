/////////   Munition

if (! isServer) exitWith {};

_crate = _this select 0;

while {alive _crate} do
{

	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	sleep 3600;
};