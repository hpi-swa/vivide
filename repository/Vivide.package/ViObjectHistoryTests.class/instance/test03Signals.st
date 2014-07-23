tests
test03Signals

	| spy |
	spy := SignalSpy new.
	spy addSender: sut signals: #(objectAdded: objectRemoved:).
	sut addObject: String.
	self assert: {#objectAdded:. {String}} equals: spy waitForNextSignal.
	sut removeObject: String.
	self assert: {#objectRemoved:. {String}} equals: spy waitForNextSignal.