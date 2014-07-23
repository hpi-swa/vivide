finder
showSearchResults

	self currentQueryView owner ifNotNil: [:owner |
		owner
			addMorph: self currentSearchView
			inFrontOf: self currentQueryView.
		self currentQueryView delete].