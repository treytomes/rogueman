drawing
drawOn: aCanvas
	
	1 to: 16 do: [ :y |
		1 to: 16 do: [ :x | | value tile |
			value := ((data at: y) at: x).

			tile := ((value = (Character space))
				ifTrue: [ TileFormFactory floor withForeground: (Color blue darker darker darker) background: (Color black) ]
				ifFalse: [ TileFormFactory wall withForeground: (Color blue) background: (Color blue darker darker darker) ]).
			
			tile := tile scaledToSize: (8 * self scale)@(8 * self scale).
			
			aCanvas drawImage: tile at: (self position + (((x - 1) * (8 * self scale))@((y - 1) * (8 * self scale)))).
		].
	].
