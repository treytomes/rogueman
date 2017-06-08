drawing
withForeground: aForegroundColor background: aBackgroundColor
	"Transform the pixel pattern into a form with the given colors."
	| form |
	form := (Form extent: (self width)@(self height) depth: Display depth).
	1 to: (self height) do: [ :y |
		1 to: (self width) do: [ :x | | bit |
			bit := ((pixels at: y) at: x).
			(bit = (Character space))
				ifTrue: [ form colorAt: ((x-1)@(y-1)) put: aBackgroundColor ]
				ifFalse: [ form colorAt: ((x-1)@(y-1)) put: aForegroundColor ]
		]
	].
	^ form.
