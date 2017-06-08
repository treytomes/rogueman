tests
testPlayer
	| tile |
	tile := TileMorph new.
	tile form: (TileFormFactory player withForeground: (Color red) background: (Color yellow)).
	tile openInWorld.