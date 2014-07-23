actions
exploreOutput

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter objects explore].