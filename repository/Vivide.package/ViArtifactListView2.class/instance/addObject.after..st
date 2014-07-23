add/remove
addObject: anObject after: anotherArtifact

	| object |
	object := (ViQueryInterpreter isCollection: anObject)
		ifTrue: [anObject "avoid unpacking"]
		ifFalse: [anObject].

	(ViArtifactLookupService new doObject: object) ifNotNil: [:ac |
		^ self
			addArtifact: (ac new object: object; hResizing: #spaceFill)
			after: anotherArtifact]