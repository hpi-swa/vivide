editors - add/remove
addObject: anObject after: anotherArtifact

	(ViArtifactLookupService new doObject: anObject) ifNotNil: [:ac |
		^ self
			addArtifact: (ac new object: anObject; hResizing: #spaceFill)
			after: anotherArtifact]