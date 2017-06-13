initialization
initialize
	"| pixels |"
	
	super initialize.
	
	self floorForm: (TileFormFactory floor withForeground: (Color blue darker darker darker) background: (Color black)).
	self wallForm: (TileFormFactory wall withForeground: (Color blue) background: (Color blue darker darker darker)).

	self data: nil.
	"#(
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
	)."
	
	"self extent: (16 * (self tileWidth))@(16 * (self tileHeight))."
	
	"
	self form: (ColorForm extent: 8@8 depth: Display depth).
	1 to: 8 do: [ :y |
		1 to: 8 do: [ :x | | bit |
			bit := ((pixels at: y) at: x).
			(bit = 1)
				ifTrue: [ self form colorAt: ((x-1)@(y-1)) put: (Color red) ]
				ifFalse: [ self form colorAt: ((x-1)@(y-1)) put: (Color blue) ]
			
		]
	]
	"