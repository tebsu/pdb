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
	
	_crate addItemCargoGlobal ["VSM_FAPC_Breacher_Multicam", 10];
	_crate addItemCargoGlobal ["VSM_FAPC_Operator_Multicam", 10];
	_crate addItemCargoGlobal ["VSM_CarrierRig_Breacher_Multicam", 10];
	_crate addItemCargoGlobal ["VSM_LBT6094_operator_Multicam", 5];
	_crate addItemCargoGlobal ["VSM_FAPC_Breacher_OGA_OD", 5];
	_crate addItemCargoGlobal ["VSM_FAPC_Operator_OGA_OD", 5];
	_crate addItemCargoGlobal ["VSM_CarrierRig_Breacher_OGA_OD", 10];
	_crate addItemCargoGlobal ["VSM_LBT6094_operator_OGA_OD", 5];
	_crate addItemCargoGlobal ["VSM_FAPC_Operator_MulticamTropic", 10];
    _crate addItemCargoGlobal ["VSM_CarrierRig_Breacher_multicamTropic", 10];
	_crate addItemCargoGlobal ["VSM_LBT6094_operator_multicamTropic", 10];
	_crate addItemCargoGlobal ["VSM_Mich2000_MulticamTropic", 10];
	_crate addItemCargoGlobal ["VSM_Mich2000_Multicam", 10];
	_crate addItemCargoGlobal ["VSM_Mich2000_CamoSprayOD", 10];
	_crate addItemCargoGlobal ["VSM_Mich2000_OGA_OD", 10];
	_crate addItemCargoGlobal ["VSM_Mich2000_CamoSprayTAN", 10];
	_crate addItemCargoGlobal ["VSM_OPS_2_multicam", 10];
	_crate addItemCargoGlobal ["VSM_MulticamTropic_OPS_2", 10];
    _crate addItemCargoGlobal ["VSM_OD_Spray_OPS_2", 10];
	_crate addItemCargoGlobal ["VSM_Tan_spray_OPS_2", 10];
	_crate addItemCargoGlobal ["BWA3_OpsCore_Fleck", 10];
	_crate addItemCargoGlobal ["BWA3_OpsCore_Tropen", 10];

	
	sleep 3600;
};
