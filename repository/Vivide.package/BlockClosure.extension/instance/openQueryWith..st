*vivide-queries
openQueryWith: someObjects

	^ VivideLight active ifNotNil: [:vivide |
		vivide
			openQuery: self
			withObjects: someObjects]