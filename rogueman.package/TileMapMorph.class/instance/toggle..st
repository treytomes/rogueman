accessing
toggle: aPoint
	((self data at: (aPoint y)) at: (aPoint x)) = $#
		ifTrue: [ (self data at: (aPoint y)) at: (aPoint x) put: (Character space)]
		ifFalse: [ (self data at: (aPoint y)) at: (aPoint x) put: $#]