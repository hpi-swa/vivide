views - accessing
currentVisibleView

	^ self currentSearchView owner
		ifNil: [self currentQueryView]
		ifNotNil: [self currentSearchView]