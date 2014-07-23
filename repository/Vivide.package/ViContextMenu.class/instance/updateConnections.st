updating
updateConnections

	self buttons do: [:btn |
		self closeOnAction
			ifTrue: [self connect: btn signal: #clicked: toSelector: #delete]
			ifFalse: [btn disconnectSignal: #clicked from: self selector: #delete]].