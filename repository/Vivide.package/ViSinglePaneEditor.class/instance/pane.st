as yet unclassified
pane

	^ self submorphs detect: [:m | m isKindOf: ViPane] ifNone: []