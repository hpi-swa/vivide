as yet unclassified
tearDown

	window
		ifNil: [editor close]
		ifNotNil: [window close].
		
	super tearDown.