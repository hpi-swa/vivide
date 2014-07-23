as yet unclassified
onFocusReceivedInSubmorph: aMorph

	(aMorph firstOwnerSuchThat: [:m | m isKindOf: ViArtifactContainer])
		ifNotNil: [:c | self objectSelectionChanged: {c object}].