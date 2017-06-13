accessing
data: aMatrix
	| width height |
	
	(aMatrix = nil) ifFalse: [
		width := (aMatrix at: 1) size.
		height := aMatrix size.
		
		1 to: (aMatrix size) do: [ :y |
			(((aMatrix at: y) size) = width)
				ifFalse: [ self error "Every row must have the same size." ]
		].
		
		self extent: (width * (self tileWidth))@(height * (self tileHeight)).
	].
	
	data := aMatrix.