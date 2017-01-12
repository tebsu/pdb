

if (! isServer) exitWith {};

_crate = _this select 0;

while {alive _crate} do
{

	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	
	_crate addbackpackCargoGlobal ["B_Parachute", 20];
	_crate addItemCargoGlobal ["ACE_TacticalLadder_Pack", 20];
	_crate addItemCargoGlobal ["ACE_ConcertinaWireCoil", 10];
	
	sleep 3600;
};

