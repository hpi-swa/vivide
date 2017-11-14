as yet unclassified
setUp: script

	super setUp: script.
	
	showLabel := script valueOfProperty: #showLabel ifAbsent: [true].
	labelHeight := script valueOfProperty: #labelHeight ifAbsent: [50].
	numLines := script valueOfProperty: #numLines ifAbsent: [2]. 
		
	self content color: (script valueOfProperty: #color ifAbsent: [Color white]).