actions - objects
insertObjects: someObjects before: aNode

	^ self
		insertEditor: (ViObjectListEditor new objects: someObjects)
		before: aNode