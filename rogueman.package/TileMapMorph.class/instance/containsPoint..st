geometry testing
containsPoint: aPoint
	| size formBounds |
	size := ((self extent x) min: (self extent y)).
	formBounds := (self position) extent: size@size.
	^ formBounds containsPoint: aPoint.
