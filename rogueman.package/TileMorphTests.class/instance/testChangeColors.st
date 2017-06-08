tests
testChangeColors
	"This would work if the tiles were using ColorForms, but they are not anymore."
	| foregroundColor backgroundColor tile |
	
	foregroundColor := Color blue.
	backgroundColor := Color blue darker darker darker.
	
	tile := TileMorph new.
	tile form: (TileFormFactory wall withForeground: foregroundColor background: backgroundColor).
	tile openInWorld.
	
	tile form replaceColor: foregroundColor with: (Color red).
	tile invalidRect: (tile bounds).