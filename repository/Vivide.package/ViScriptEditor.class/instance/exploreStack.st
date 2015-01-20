actions - debugging
exploreStack

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter stack explore].