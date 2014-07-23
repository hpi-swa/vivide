actions
exploreOutputWithoutGroups

	self interpretUpToSelf ifNotNil: [:interpreter |
		interpreter allObjects explore].