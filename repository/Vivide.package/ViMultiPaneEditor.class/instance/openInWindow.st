geometry - actions
openInWindow

	self
		fullBounds;
		width: ((self optimalWidth min: 700) max: 200);
		fullBounds;
		height: ((self optimalHeight min: 500) max: 200).	

	super openInWindow in: [:wnd |		
		wnd appendHeaderButtons: {self ui addPaneBtn}.
		^ wnd].