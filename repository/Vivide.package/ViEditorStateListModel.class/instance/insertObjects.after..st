actions - objects
insertObjects: someObjects after: aNode

	^ self
		insertEditor: (ViMultiPaneEditor new: #artifacts for: someObjects)
		after: aNode
