accessing
closeOnAction: aBoolean

	self closeOnAction == aBoolean ifTrue: [^ self].
	self
		setProperty: #closeOnAction
		toValue: aBoolean.

	self updateConnections.