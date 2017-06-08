event handling
mouseDown: anEvent
	| mapPoint |
	
	mapPoint := (((anEvent cursorPoint) - (self position)) / 16) floor + (1@1).
	
	"Transcript open."
	Transcript show: mapPoint; cr.
	"anEvent inspect."
	
	self toggle: mapPoint.

	"anEvent redButtonPressed
		ifTrue: [ self color: Color red]." "click"
	"anEvent yellowButtonPressed
		ifTrue: [ self color: Color yellow ]." "action-click"
	self changed.