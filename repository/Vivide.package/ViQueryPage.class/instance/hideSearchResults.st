finder
hideSearchResults

	self currentSearchView owner ifNotNil: [:owner |
		owner
			addMorph: self currentQueryView
			inFrontOf: self currentSearchView.
		self currentSearchView delete].