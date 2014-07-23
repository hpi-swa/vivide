*vivide-queries
openQueryWith: someObjects

	ActiveVivide ifNotNil: [:vivide |
		vivide
			openQuery: (ViQueryStep convert: self)
			withObjects: someObjects].