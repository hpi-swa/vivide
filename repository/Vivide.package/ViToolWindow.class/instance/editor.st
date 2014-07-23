accessing
editor

	^ self paneMorphs detect: [:m | m isKindOf: ViEditor] ifNone: []