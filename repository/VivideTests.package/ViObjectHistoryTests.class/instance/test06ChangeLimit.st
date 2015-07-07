tests
test06ChangeLimit

	| spy |
	sut limit: 2.
	spy := SignalSpy onSender: sut signal: #limitChanged.
	sut addObject: String.
	sut addObject: Character.
	
	self assert: 2 equals: sut size.
	sut limit: 1.
	self
		assert: {#limitChanged. {}} equals: spy waitForNextSignal;
		assert: 1 equals: sut size.