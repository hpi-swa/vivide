activation and focus
activate

	self owner == self world
		ifTrue: [self beKeyWindow "For compatibility."]
		ifFalse: [self activated].