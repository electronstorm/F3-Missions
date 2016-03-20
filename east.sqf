_toilet = "Land_GarbageContainer_open_F" createVehicle [0 +random 50, 0 + random 50, 0];
_toilet attachTo [player, [0, 0, 0.6]];
_toilet setDir 90; _toilet animate ["door_1_rot",1];
