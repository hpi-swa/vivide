geometry - actions
openInWindow

	self width: 700. "Better support for height-for-width layouts."
	self fullBounds.

	self
		width: ((self optimalWidth min: 700) max: 200);
		fullBounds;
		height: ((self optimalHeight min: 500) max: 200).	

	super openInWindow in: [:wnd |
		VivideLight useClassicMode
			ifFalse: [wnd appendHeaderButtons: {self ui addPaneBtn}].
		^ wnd].