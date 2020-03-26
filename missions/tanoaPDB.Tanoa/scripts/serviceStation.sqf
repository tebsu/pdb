//Version 1.4
//License: http://www.armaholic.com/page.php?id=25882

//_nul = [vehicle player,<trigger name>]execVM "blz_service_station_V1.4.sqf";

_object = _this select 0;
_trg = _this select 1;

_trg_pos = getPos _trg;
_trg_agl = ((triggerArea _trg) select 2);
_trg_txt = triggerText _trg;


_max_distance = 12;

sleeptimer_s = 6;
sleeptimer_m = 10;
sleeptimer_l = 20;
_loop = 0;

blz_repair =
{
	_object = _this select 3 select 0;
	_trg = _this select 3 select 1;

	_damage = damage _object;


	if(_damage > 0 && triggerActivated _trg) then
	{
		sleep sleeptimer_s;


		while {_damage > 0 && triggerActivated _trg} do
		{
			titleText ["REPAIR","PLAIN DOWN"];
			sleep sleeptimer_s;
			_object setDamage (_damage - 0.02);
			_damage = damage vehicle player;

		};

		sleep sleeptimer_m;
	};
};

blz_refuel=
{
	_object = _this select 3 select 0;
	_trg = _this select 3 select 1;

	_fuel = fuel _object;
	
	_vehicle = typeOf _object;
	
	if(_vehicle == "B_Truck_01_fuel_F") then {
		titleText ["FUEL","PLAIN DOWN"];
		sleep sleeptimer_m;
		[_object, 10000] call ace_refuel_fnc_setFuel;
	};
	if(_vehicle == "C_Van_01_fuel_F") then {
		titleText ["FUEL","PLAIN DOWN"];
		sleep sleeptimer_s;
		[_object, 2000] call ace_refuel_fnc_setFuel;
	};
};

blz_rearm=
{
	_object = _this select 3 select 0;
	_trg = _this select 3 select 1;

	_vehicle = typeOf _object;
	_weapon = getArray (configFile >> "CfgVehicles" >> _vehicle >> "weapons");

	_object setVehicleAmmo 1;

	if(count _weapon > 1 && triggerActivated _trg) then
		{

				for[{_i = 0},{_i < count _weapon && triggerActivated _trg},{_i = _i+1}] do
				{
					titleText ["WEAPONS","PLAIN DOWN"];
					sleep sleeptimer_m;
					_object setAmmo [_weapon select _i, 10000];

				};
			sleep sleeptimer_m;
		};
/*______________________________________________________________________________________________*/
	_turrets = _object weaponsTurret [0];
	_turrets_cmd = _object weaponsTurret [0];

	_count_turrets = count _turrets;
	_count_turrets_cmd = count _turrets_cmd;

	if (_count_turrets > 0) Then {
		for[{_i = 0},{_i < count _turrets && triggerActivated _trg },{_i = _i+1}] do
		{
			titleText ["REARMING TURRET","PLAIN DOWN"];
			sleep sleeptimer_m;
			_object setAmmo [_turrets select _i, 2000];
		};
	};

	if (_count_turrets_cmd > 0) Then {
		for[{_i = 0},{_i < count _turrets_cmd && triggerActivated _trg},{_i = _i+1}] do
		{
			titleText ["REARMING CMDR SEAT","PLAIN DOWN"];
			sleep sleeptimer_m;
			_object setAmmo [_turrets_cmd select _i, 2000];
		};
	};
};

/*______________________________________________________________________________________________*/
/*______________________________________________________________________________________________*/

blz_turn =
{
	_object = _this select 3 select 0;
	_trg = _this select 3 select 1;
//	_trg_pos = _this select 3 select 2;
	_trg_agl = _this select 3 select 3;

if (triggerActivated _trg) then {
	titleText ["Turning...", "PLAIN"];
	sleep sleeptimer_s;
	if (triggerActivated _trg) then {
	_object setDir _trg_agl;
	titleFadeOut 2;};
};
};

delAction =
{
	_trg = _this select 3 select 1;
	_trg_txt = triggerText _trg;

	_object = vehicle player;
	driver _object removeAction SS;
	if(_trg_txt == "blz_turn") Then {driver _object removeAction SS_turn;};
};

into =
{
	call delAction;
	sleep 1;
	player action ["engineOff", vehicle player];
	titleText ["PLEASE STAY INSIDE THE VEHICLE", "PLAIN DOWN"];
	sleep sleeptimer_s;

};

outo =
{
	sleep sleeptimer_s;
	titleText ["SERVICE COMPLETE", "PLAIN DOWN"],
	player action ["engineOn", vehicle player];
};

blz_ss_turn=
{
	_object = _this select 3 select 0;
	call into;

	call blz_refuel;
	call blz_repair;
	call blz_rearm;
	call blz_turn;

	call outo;
};

blz_ss =
{
	_object = _this select 3 select 0;
	call into;

	call blz_refuel;
	call blz_repair;
	call blz_rearm;

	call outo;
};
//==========================================================================================================================================================

if (triggerActivated _trg && _object != player && player == driver _object) then {


			if(triggerActivated _trg) Then {
				SS = driver _object addAction ["<t color='#f69619'>Service Station</t>", {call blz_ss}, [_object,_trg,_trg_pos,_trg_agl,_trg_txt]];

				if(_trg_txt == "blz_turn") Then
					{
						SS_turn = driver _object addAction ["<t color='#f69619'>Service Station w/Turn</t>", {call blz_ss_turn}, [_object,_trg,_trg_pos,_trg_agl,_trg_txt]];
					};

				_loop = 1;
			};

	while {_loop == 1} do { if (!triggerActivated _trg) exitWith {call delAction}};
};