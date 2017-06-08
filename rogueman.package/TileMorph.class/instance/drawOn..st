drawing
drawOn: aCanvas
	aCanvas drawImage: (self form scaledToSize: (self extent)) at: (self position).