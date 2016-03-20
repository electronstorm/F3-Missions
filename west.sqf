_toilet = "Land_FieldToilet_F" createVehicle [0 +random 50, 0 + random 50, 0];
_toilet attachTo [player, [0, 0.6, 1.1]];
_toilet setDir 180; _toilet animate ["door_1_rot",1];
