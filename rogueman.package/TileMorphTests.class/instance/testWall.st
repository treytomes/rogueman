tests
testWall
	| foregroundColor backgroundColor tile |
	
	foregroundColor := Color blue.
	backgroundColor := Color blue darker darker darker.
	
	tile := TileMorph new.
	tile form: (TileFormFactory wall withForeground: foregroundColor background: backgroundColor).
	tile openInWorld.