as yet unclassified
closeWindow

	self selectedWindow ifNotNil: [:thumbnail |
		(thumbnail valueOfProperty: #window) delete.

		self selectNextWindow.
		
		self selectedWindow == thumbnail
			ifTrue: [self delete. ^ self].
		
		thumbnail delete.
		
		self updateLayout].