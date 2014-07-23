geometry
minimalWidth

	self pages ifEmpty: [^ super minimalWidth].
	
	^ {super minimalWidth.self ui stack currentPage minimalWidth} max