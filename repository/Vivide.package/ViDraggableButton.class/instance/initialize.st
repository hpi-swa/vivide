initialization
initialize

	dragIcon := ViIcons dragIcon asMorph.

	super initialize.
	
	self
		dragEnabled: true;
		autoRaise: true.