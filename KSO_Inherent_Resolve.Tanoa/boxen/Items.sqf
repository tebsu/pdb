if (! isServer) exitWith {};

_crate = _this select 0;

while {alive _crate} do
{

	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	_crate addItemCargoGlobal ["ItemWatch", 20];
	_crate addItemCargoGlobal ["ItemCompass", 20];
	_crate addItemCargoGlobal ["ItemMap", 20];
	_crate addItemCargoGlobal ["ACE_microDAGR", 20];
	_crate addItemCargoGlobal ["ACE_Flashlight_MX991", 20];
	_crate addItemCargoGlobal ["ACE_EarPlugs", 20];
	_crate addItemCargoGlobal ["ACE_HuntIR_monitor", 20];
	_crate addItemCargoGlobal ["ACE_Kestrel4500", 20];
	_crate addItemCargoGlobal ["A3_GPNVG18_F", 20];
	_crate addItemCargoGlobal ["A3_GPNVG18_BLK_F", 20];
	_crate addItemCargoGlobal ["ACE_Altimeter", 20];
	_crate addItemCargoGlobal ["ACE_Vector", 20];
	_crate addItemCargoGlobal ["ACE_ATragMX", 20];
	_crate addItemCargoGlobal ["ItemcTabHCam", 20];
	_crate addItemCargoGlobal ["ACE_IR_Strobe_Item", 20];
	_crate addItemCargoGlobal ["ACE_MapTools", 20];
	_crate addItemCargoGlobal ["ACE_CableTie", 40];
	_crate addItemCargoGlobal ["ACE_TacticalLadder_Pack", 10];
	_crate addItemCargoGlobal ["ACE_SpottingScope", 10];
	_crate addItemCargoGlobal ["ACE_wirecutter", 20];
	_crate addItemCargoGlobal ["ACE_RangeCard", 20];
	_crate addItemCargoGlobal ["ACE_Tripod", 5];
	_crate addItemCargoGlobal ["Laserdesignator", 2];
	_crate addItemCargoGlobal ["Laserbatteries", 10];
	
	sleep 3600;
};

