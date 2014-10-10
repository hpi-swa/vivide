as yet unclassified
exploreOutput

	self interpretUpToSelf ifNotNil: [:interpreter |
		(interpreter objects at: #all) explore].