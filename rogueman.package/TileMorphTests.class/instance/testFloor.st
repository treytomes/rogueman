tests
testFloor
	| foregroundColor backgroundColor tile |
	
	foregroundColor := Color blue darker darker darker.
	backgroundColor := Color black.
	
	tile := TileMorph new.
	tile form: (TileFormFactory floor withForeground: foregroundColor background: backgroundColor).
	tile openInWorld.