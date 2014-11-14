as yet unclassified
openArtifacts: someObjects

	self artifactContainerColumn
		addAllMorphs: (someObjects
			collect: [:object |
				(ViArtifactLookupService new doObject: object)
					ifNotNil: [:ac | ac new object: object; hResizing: #spaceFill]]
			thenSelect: [:object | object notNil])
		after: self focusedArtifact.