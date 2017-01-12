/////////   Munition

if (! isServer) exitWith {};


_crate = _this select 0;




while {alive _crate} do
{


clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;


///Munition///
_crate addMagazineCargoGlobal ["BWA3_40Rnd_46x30_MP7", 50];
_crate addMagazineCargoGlobal ["BWA3_30Rnd_556x45_G36_AP", 150];
_crate addMagazineCargoGlobal ["BWA3_30Rnd_556x45_G36_Tracer_Dim", 10];
_crate addMagazineCargoGlobal ["BWA3_200Rnd_556x45", 100];
_crate addMagazineCargoGlobal ["BWA3_120Rnd_762x51", 10];
_crate addMagazineCargoGlobal ["BWA3_20Rnd_762x51_G28_AP", 150];
_crate addMagazineCargoGlobal ["hlc_50Rnd_762x51_B_MG3", 150];
_crate addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82_AP", 40];
_crate addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82_Raufoss_Tracer", 10];
_crate addMagazineCargoGlobal ["BWA3_15Rnd_9x19_P8", 80];
_crate addMagazineCargoGlobal ["150Rnd_556x45_Drum_Mag_Tracer_F", 10];
_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", 10];
_crate addMagazineCargoGlobal ["ACE_20Rnd_762x51_Mk319_Mod_0_Mag", 10];
_crate addMagazineCargoGlobal ["11Rnd_45ACP_Mag", 80];
_crate addMagazineCargoGlobal ["16Rnd_9x21_Mag", 80];










sleep 3600;
};