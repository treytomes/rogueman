initialization
initialize
	"| pixels |"
	
	super initialize.
	
	self form: (TileFormFactory wall withForeground: (Color green) background: (Color blue)).
	
	"
	pixels := #(
		#( 0 1 1 1 1 1 1 0)
		#( 1 1 1 1 1 1 1 1)
		#( 1 1 0 1 1 0 1 1)
		#( 1 1 0 1 1 0 1 1)
		#( 1 1 1 1 1 1 1 1)
		#( 1 1 0 0 0 0 1 1)
		#( 1 1 1 0 0 1 1 1)
		#( 0 1 1 1 1 1 1 0)
	).
	
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