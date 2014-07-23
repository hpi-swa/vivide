accessing - views
currentVisibleView

	^ self currentSearchView owner
		ifNil: [self currentQueryView]
		ifNotNil: [self currentSearchView]