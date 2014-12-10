actions - objects
insertObjects: someObjects after: aNode

	^ self
		insertEditor: (ViSinglePaneEditor new: #artifacts for: someObjects)
		after: aNode
