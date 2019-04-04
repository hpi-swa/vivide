tests
test08WithAllObjects

	| packageName q1 |
	packageName := #Morphic.
	
	q1 := {
		[:classes | 
			Smalltalk globals at: #test08WithAllObjects put: classes.
			classes reject: [:class | classes includes: class superclass]].
		[:class | #text -> class name].
		[:class | class subclasses].
		[:classes | classes select: [:class | (Smalltalk globals at: #test08WithAllObjects) includes: class]]
	
	} asScript.
	q1 steps last next: q1 steps second asReference. 
		
	sut
		inputForChildren: (PackageInfo named: packageName) classes;
		firstStep: q1.
	
	self assert: sut childCount < sut inputForChildren size.
	
	Smalltalk globals removeKey: #test08WithAllObjects.