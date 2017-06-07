drawing
drawOn: aCanvas
	| horizontalBar topAndBottom |
	horizontalBar := self horizontalBar.
	aCanvas fillRectangle: horizontalBar color: self color.
	
	topAndBottom := self verticalBar areasOutside: horizontalBar.
	topAndBottom do: [ :each |
		aCanvas fillRectangle: each color: color.
	].
