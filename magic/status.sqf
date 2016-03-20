_lastblue = 0;
_lasted = 0;

while {true} do {

  _blue = {(typeOf _x) == "C_Kart_01_F"} count (list blueTrigger);
  _red = {(typeOf _x) == "C_Kart_01_F"} count (list redTrigger);

  hintSilent parseText format ["<t color='#0000ff'>Blue</t>: %1<br /><t color='#ff0000'>Red</t>: %2", _blue, _red];
  _lastblue = _blue;
  _lastred = _red;
  sleep 1;
};
