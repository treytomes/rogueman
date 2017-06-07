stepping and presenter
step
	((self color lightness) < 0.05)
		ifTrue: [
			self startGettingLighter
		].
	((self color lightness) > 0.95)
		ifTrue: [ 
			self startGettingDarker
		].
	
	self isGettingDarker
		ifTrue: [ 
			self color: self color darker
		]
		ifFalse: [
			self color: self color lighter.
		].
