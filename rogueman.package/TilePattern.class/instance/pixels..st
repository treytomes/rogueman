accessing
pixels: aMatrix
	| width |
	
	width := (aMatrix at: 1) size.
	
	1 to: (aMatrix size) do: [ :y |
		(((aMatrix at: y) size) = width)
			ifFalse: [ self error "Every row must have the same size." ]
	].

	pixels := aMatrix