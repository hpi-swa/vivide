running
tearDown

	sut stop.
	process ifNotNil: #terminate.
	process := nil.
	super tearDown.