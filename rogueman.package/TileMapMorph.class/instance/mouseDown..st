event handling
mouseDown: anEvent
	| mapPoint |
	
	mapPoint := (((anEvent cursorPoint) - (self position)) / 16) rounded.
	Transcript show: mapPoint; cr.
	"anEvent inspect."
	
	self toggle: mapPoint.

	"anEvent redButtonPressed
		ifTrue: [ self color: Color red]." "click"
	"anEvent yellowButtonPressed
		ifTrue: [ self color: Color yellow ]." "action-click"
	self changed.