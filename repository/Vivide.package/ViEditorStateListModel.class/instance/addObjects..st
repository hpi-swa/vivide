actions - objects
addObjects: someObjects

	^ self addEditor: (ViSinglePaneEditor new: #artifacts for: someObjects)