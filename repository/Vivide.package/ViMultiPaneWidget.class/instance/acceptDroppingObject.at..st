as yet unclassified
acceptDroppingObject: anObject at: aPoint

	| pane |
	pane := ViPane new
"		objects: ((ViQueryInterpreter isCollection: anObject)
			ifTrue: [anObject] ifFalse: [ {anObject} ]);
"		queries: [self organization orderedSteps];
"		currentQuery: ([:object | object] asScript
			setProperty: #isNew toValue: true;   
			adoptOrganization: self organization;
			yourself);
"	"	fullBounds;"
		yourself.
	
	self
		acceptDroppingPane: pane
		at: aPoint.
	
	self fullBounds. "Enforce calculation of window bounds before additional window is opened."
	
"	pane
		grabKeyboard;
		debugQuery."

	^ pane