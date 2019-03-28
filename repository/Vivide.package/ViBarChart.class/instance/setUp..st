as yet unclassified
setUp: script

	super setUp: script.
	
	showLabel := script valueOfProperty: #showLabel ifAbsent: [true].
	labelHeight := script valueOfProperty: #labelHeight ifAbsent: [50].
	numLines := script valueOfProperty: #numLines ifAbsent: [2]. 

	(script valueOfProperty: #showToolbar ifAbsent: [false])
		ifTrue: [self toolbar showFull]
		ifFalse: [self toolbar hideFull].
		
	animateBars := script valueOfProperty: #animateBars ifAbsent: [false]. 
	animationDelay := script valueOfProperty: #animationDelay ifAbsent: [500]. 
	animationDuration := script valueOfProperty: #animationDuration ifAbsent: [500]. 
	
	self content color: (script valueOfProperty: #color ifAbsent: [Color white]).