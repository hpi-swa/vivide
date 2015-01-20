actions - debugging
exploreAllProperties

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter properties explore].