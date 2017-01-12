/////////   Spezialbox

if (! isServer) exitWith {};


_crate = _this select 0;


while {alive _crate} do
{




clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;


///Spezialbox///


_crate addItemCargoGlobal ["BWA3_G82", 5];
_crate addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82_AP", 40];
_crate addMagazineCargoGlobal ["BWA3_10Rnd_127x99_G82_Raufoss_Tracer", 10];
_crate addItemCargoGlobal ["M32_EP1", 5];
_crate addMagazineCargoGlobal ["M576_M32_mag", 20];
_crate addMagazineCargoGlobal ["Smoke_M32_mag", 20];
_crate addMagazineCargoGlobal ["FlareWhite_M32_mag", 20];
_crate addMagazineCargoGlobal ["HE_M32_mag", 20];




sleep 3600;
};

