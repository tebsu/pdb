// Settings
0 fadeRadio 0;
enableRadio false;
enableSentences false;
enableSaving [false, false];
setTerrainGrid 3.125;

// Init
player enableFatigue false;
player enableStamina false;
player allowSprint true;
player setCustomAimCoef 0.1;


//Logistic
execVM "R3F_LOG\init.sqf";
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";