actions - objects
insertObjects: someObjects after: aNode

	^ self
		insertEditor: (ViObjectListEditor new objects: someObjects)
		after: aNode
