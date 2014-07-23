layout
layout: morph in: bounds

	| newExtent resizing |
	morph submorphs ifEmpty: [^ self].
	
	resizing := (morph submorphs anySatisfy: [:m | (m instVarNamed: #fullBounds) isNil])
		ifTrue: [self shrinkWrap: morph from: bounds]
		ifFalse: [self resize: morph in: bounds].