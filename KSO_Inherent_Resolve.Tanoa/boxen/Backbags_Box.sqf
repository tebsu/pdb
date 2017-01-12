if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


	clearMagazineCargoGlobal _crate;
	clearWeaponCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;

	_crate addbackpackCargoGlobal ["tf_rt1523g_bwmod", 5];
	_crate addbackpackCargoGlobal ["B_Kitbag_rgr", 5];
	_crate addbackpackCargoGlobal ["BWA3_PatrolPack_Tropen", 5];
	_crate addbackpackCargoGlobal ["BWA3_PatrolPack_Fleck", 5];
	_crate addbackpackCargoGlobal ["VSM_Multicam_carryall", 5];
	_crate addbackpackCargoGlobal ["VSM_Multicam_Backpack_Compact", 5];
	_crate addbackpackCargoGlobal ["VSM_Multicam_Backpack_Kitbag", 5];
	_crate addbackpackCargoGlobal ["VSM_MulticamTropic_carryall", 5];
	_crate addbackpackCargoGlobal ["VSM_MulticamTropic_Backpack_Compact", 5];
	_crate addbackpackCargoGlobal ["VSM_MulticamTropic_Backpack_Kitbag", 5];
	_crate addbackpackCargoGlobal ["ace_gunbag", 2];
	
	
				
	sleep 3600;
};
