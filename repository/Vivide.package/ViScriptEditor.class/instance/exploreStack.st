as yet unclassified
exploreStack

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter stack explore].