as yet unclassified
activateWindow

	self selectedWindow ifNotNil: [:thumbnail | (thumbnail valueOfProperty: #window) activate].
	self delete.