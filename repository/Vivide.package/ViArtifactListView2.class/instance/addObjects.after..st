editors - add/remove
addObjects: someObjects after: anotherArtifact
	"Creates new editors for the given objects if there is one."
	
	((someObjects
		collect: [:object |
			(ViArtifactLookupService new doObject: object)
				ifNotNil: [:ac | ac new object: object; hResizing: #spaceFill]])
		select: [:ac | ac notNil]) in: [:artifactContainers |
			self
				addArtifacts: artifactContainers
				after: anotherArtifact].