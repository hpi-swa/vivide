actions
exploreContexts

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter contexts explore].