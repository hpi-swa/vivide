initialization
resetSource

	self method ifNil: [^ self].
	
	self artifact sourceCode: self method getSource.	
	
	self redrawLater.