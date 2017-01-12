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


_crate addMagazineCargoGlobal ["UGL_FlareWhite_F", 10];
_crate addMagazineCargoGlobal ["UGL_FlareGreen_F", 10];
_crate addMagazineCargoGlobal ["UGL_FlareRed_F", 10];
_crate addMagazineCargoGlobal ["ACE_HuntIR_M203", 10];
_crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 20];
_crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 20];
_crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 20];
_crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 20];
_crate addMagazineCargoGlobal ["M576_M32_mag", 20];
_crate addMagazineCargoGlobal ["Smoke_M32_mag", 20];
_crate addMagazineCargoGlobal ["FlareWhite_M32_mag", 20];
_crate addMagazineCargoGlobal ["HE_M32_mag", 20];
_crate addMagazineCargoGlobal ["BWA3_Pzf3_IT", 6];




sleep 3600;
};
