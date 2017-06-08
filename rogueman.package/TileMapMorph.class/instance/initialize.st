initialization
initialize
	"| pixels |"
	
	super initialize.

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
	
	self extent: (16 * 8 * self scale)@(16 * 8 * self scale).
	
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