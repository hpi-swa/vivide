geometry - actions
openInWindow

	| window |
	self
		width: ((self optimalWidth min: 700) max: 300);
		fullBounds;
		height: (self optimalHeight max: 150).
	
	window := super openInWindow.
	window appendHeaderButtons: {self ui pageButtonGroup. self ui addPageBtn}.
		
	^ window