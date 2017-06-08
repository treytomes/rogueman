tests
testTileMap
	| data map |
	data := #(
		'################'
		'#              #'
		'#              #'
		'#              #'
		'#     ##       #'
		'#      #       #'
		'#      ##      #'
		'#              #'
		'#              #'
		'#              #'
		'#              #'
		'#     ###      #'
		'#     ###      #'
		'#     ###      #'
		'#              #'
		'################'
	).
	
	map := Morph new.
	map extent: (16 * 8)@(16 * 8).
	
	1 to: 16 do: [ :y |
		1 to: 16 do: [ :x | | value form |
			value := ((data at: y) at: x).

			form := ((value = (Character space))
				ifTrue: [ TileFormFactory floor withForeground: (Color blue darker darker darker) background: (Color black) ]
				ifFalse: [ TileFormFactory wall withForeground: (Color blue) background: (Color blue darker darker darker) ]).
			"map addMorph: tile.
			tile position: (x * 8)@(y * 8)."
		].
	].
	
	map openInWorld.