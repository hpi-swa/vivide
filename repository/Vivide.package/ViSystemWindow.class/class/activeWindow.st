as yet unclassified
activeWindow

	^ ViActiveVivide world submorphs
		detect: [:m | (m isKindOf: ViSystemWindow) and: [m isActive]]
		ifNone: []