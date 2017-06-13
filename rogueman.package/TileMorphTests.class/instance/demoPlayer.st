demos
demoPlayer
	<script: 'self new demoPlayer'>
	
	| tile |
	tile := TileMorph new.
	tile form: (TileFormFactory player withForeground: (Color white) background: (Color black)).
	tile openInWorld.