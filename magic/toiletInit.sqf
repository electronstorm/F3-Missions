_toilet = _this select 0;
_toilet allowDamage false;
_kart = (getPos _toilet) nearestObject "C_Kart_01_F";

_toilet attachTo [_kart, [0, -0.5, 0.1] ];
