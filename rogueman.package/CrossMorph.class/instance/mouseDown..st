event handling
mouseDown: anEvent
	anEvent redButtonPressed
		ifTrue: [ self color: Color red]. "click"
	anEvent yellowButtonPressed
		ifTrue: [ self color: Color yellow ]. "action-click"
	self changed.