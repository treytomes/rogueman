event handling
handleKeystroke: anEvent
	| keyValue |
	keyValue := anEvent keyValue.
	keyValue = 30 "up arrow"
		ifTrue: [ self position: self position - (0 @ 1) ].
	keyValue = 31 "down arrow"
		ifTrue: [ self position: self position + (0 @ 1) ].
	keyValue = 29 "right arrow"
		ifTrue: [ self position: self position + (1 @ 0) ].
	keyValue = 28 "left arrow"
		ifTrue: [ self position: self position - (1 @ 0) ].
	keyValue = $+ asciiValue "+"
		ifTrue: [ self startStepping ].
	keyValue = $- asciiValue "-"
		ifTrue: [ self stopStepping ].
	