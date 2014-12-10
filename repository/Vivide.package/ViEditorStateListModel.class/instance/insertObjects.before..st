actions - objects
insertObjects: someObjects before: aNode

	^ self
		insertEditor: (ViSinglePaneEditor new: #artifacts for: someObjects)
		before: aNode