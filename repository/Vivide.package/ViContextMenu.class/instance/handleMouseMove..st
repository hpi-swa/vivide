events-processing
handleMouseMove: anEvent

	super handleMouseMove: anEvent.
	
	anEvent wasHandled not
		ifTrue: [self mouseMove: anEvent. anEvent wasHandled: true].