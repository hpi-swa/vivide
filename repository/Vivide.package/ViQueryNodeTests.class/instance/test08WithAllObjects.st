tests
test08WithAllObjects

	| packageName q1 |
	packageName := #Morphic.
	
	q1 := {
		[:classes | 
			Smalltalk at: #test08WithAllObjects put: classes.
			classes reject: [:class | classes includes: class superclass]].
		[:class | #text -> class name].
		[:class | class subclasses].
		[:classes | classes select: [:class | (Smalltalk at: #test08WithAllObjects) includes: class]]
	
	} asScript.
	q1 steps last next: q1 steps second asReference. 
		
	sut firstStep: (ViQueryStep use: (PackageInfo named: packageName) classes in: q1).
	
	self
		assert: sut childCount < sut firstStep objects size;
		assert: sut allObjects size = sut firstStep objects size.
	
	Smalltalk removeKey: #test08WithAllObjects.