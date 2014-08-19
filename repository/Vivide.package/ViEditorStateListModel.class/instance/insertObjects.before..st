actions - objects
insertObjects: someObjects before: aNode

	^ self
		insertEditor: (ViMultiPaneEditor new: #artifacts for: someObjects)
		before: aNode