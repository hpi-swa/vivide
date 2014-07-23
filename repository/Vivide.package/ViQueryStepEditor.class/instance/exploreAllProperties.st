actions
exploreAllProperties

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter properties explore].