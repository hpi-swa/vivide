as yet unclassified
handleMouseMove: anEvent
	"Receive any mouse move event."
	
	(anEvent hand hasSubmorphs and: [anEvent hand submorphs first isSystemWindow])
		ifTrue: [^ self].
	
	super handleMouseMove: anEvent.