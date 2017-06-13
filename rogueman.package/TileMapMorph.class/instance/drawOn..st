drawing
drawOn: aCanvas
	
	1 to: 16 do: [ :y |
		1 to: 16 do: [ :x | | value tile |
			value := ((data at: y) at: x).

			tile := ((value = (Character space))
				ifTrue: [ self floorForm ]
				ifFalse: [ self wallForm ]).
			
			tile := tile scaledToSize: (self tileWidth)@(self tileHeight).
			
			aCanvas drawImage: tile at: (self position + (((x - 1) * (self tileWidth))@((y - 1) * (self tileHeight)))).
		].
	].
