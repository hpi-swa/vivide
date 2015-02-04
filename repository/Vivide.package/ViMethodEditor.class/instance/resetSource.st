initialization
resetSource

	self method ifNil: [^ self].
	
	self artifact
		sourceCode: self method getSource;
		select: (1 to: 0).	
	
	self updateToolbars.
	self redrawLater.