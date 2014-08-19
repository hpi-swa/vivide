actions - objects
addObjects: someObjects

	^ self addEditor: (ViMultiPaneEditor new: #artifacts for: someObjects)