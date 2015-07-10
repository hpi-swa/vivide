as yet unclassified
acceptDroppingObject: anObject at: aPoint

	| pane |
	pane := ViPane new
		queries: [self organization orderedSteps];
		objects: anObject asList;
		yourself.

	self assert: pane currentQuery notNil.
	
	self
		acceptDroppingPane: pane
		at: aPoint.
	
	"Enforce calculation of window bounds before additional window is opened."
	self fullBounds. 
	
	^ pane