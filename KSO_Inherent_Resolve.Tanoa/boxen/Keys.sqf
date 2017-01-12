if (! isServer) exitWith {};

_crate = _this select 0;

while {alive _crate} do
{
	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	_crate addItemCargoGlobal ["ACE_key_west", 20];
	_crate addItemCargoGlobal ["ACE_key_master", 5];
	
	sleep 3600;
};