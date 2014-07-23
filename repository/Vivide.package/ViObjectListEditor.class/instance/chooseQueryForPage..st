actions
chooseQueryForPage: queryPage

	queryPage queryChooser owner ifNotNil: [
		queryPage queryChooser delete.
		^ self].

	queryPage queryChooser
		chooseObjectAt: (self buttonForPage: queryPage) boundsInWorld bottomLeft
		thenNotify: queryPage
		with: #currentQuery:.