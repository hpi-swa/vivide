dropping
handleMouseMove: anEvent
	"Receive any mouse move event."
	
	super handleMouseMove: anEvent.
	
	anEvent hand hasSubmorphs
		ifTrue: [self mouseMove: anEvent].