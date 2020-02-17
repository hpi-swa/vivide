as yet unclassified
isTopLevel

	self flag: #metaScript.
	^ self owner isNil or: [self owner isKindOf: ViSinglePaneEditor]