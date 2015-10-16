as yet unclassified
closeWindow

	self selectedWindow ifNotNil: [:thumbnail |
		(thumbnail valueOfProperty: #window) delete.
		
		self selectNextWindow.
		thumbnail delete.
		
		self updateLayout].