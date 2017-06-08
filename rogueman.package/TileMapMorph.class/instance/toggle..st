accessing
toggle: aPoint
	((data at: (aPoint y)) at: (aPoint x)) = $#
		ifTrue: [ (data at: (aPoint y)) at: (aPoint x) put: (Character space)]
		ifFalse: [ (data at: (aPoint y)) at: (aPoint x) put: $#]