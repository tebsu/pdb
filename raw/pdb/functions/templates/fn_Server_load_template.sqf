_pdb_marker_pos = getMarkerPos "pdb_template_station";
_object = nearestObjects[_pdb_marker_pos,["all"],3];
_object = _object select 0;
_template_id = _this select 0;

clearItemCargoGlobal _object;
clearBackpackCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearWeaponCargoGlobal _object;

[_template_id] execVM "\pdb\functions\misc\debug.sqf";

systemChat format["loading id %1 into %2",_template_id,_object];

_sql = "extDB3" callExtension format["0:SQL:SELECT invItem FROM wi_inventory_templates WHERE id = '%1'",_template_id];
_aResult = _sql splitString "[,]";

_iCountItems = (count _aResult - 1) / 2;
if(_iCountItems > 0) then {
	for "_i" from 1 to _iCountItems do 
	{
		_item = call compile (_aResult select _i);
		_itemAmount = parseNumber (_aResult select (_i + _iCountItems));
		_object addItemCargoGlobal [_item, _itemAmount];
	};
	
};

_sql = "extDB3" callExtension format["0:SQL:SELECT invBackpack FROM wi_inventory_templates WHERE id = '%1'",_template_id];
_aResult = _sql splitString "[,]";
_iCountItems = (count _aResult - 1) / 2;
if(_iCountItems > 0) then {
	for "_i" from 1 to _iCountItems do 
	{
		_item = call compile (_aResult select _i);
		_itemAmount = parseNumber (_aResult select (_i + _iCountItems));
		_object addBackpackCargoGlobal [_item, _itemAmount];
	};

};

_sql = "extDB3" callExtension format["0:SQL:SELECT invMagazine FROM wi_inventory_templates WHERE id = '%1'",_template_id];
_aResult = _sql splitString "[,]";
_iCountItems = (count _aResult - 1) / 2;
if(_iCountItems > 0) then {
	for "_i" from 1 to _iCountItems do 
	{
		_item = call compile (_aResult select _i);
		_itemAmount = parseNumber (_aResult select (_i + _iCountItems));
		_object addMagazineCargoGlobal [_item, _itemAmount];
	};

};

_sql = "extDB3" callExtension format["0:SQL:SELECT invWeapon FROM wi_inventory_templates WHERE id = '%1'",_template_id];
_aResult = _sql splitString "[,]";
_iCountItems = (count _aResult - 1) / 2;
if(_iCountItems > 0) then {
	for "_i" from 1 to _iCountItems do 
	{
		_item = call compile (_aResult select _i);
		_itemAmount = parseNumber (_aResult select (_i + _iCountItems));
		_object addWeaponCargoGlobal [_item, _itemAmount];
	};

};