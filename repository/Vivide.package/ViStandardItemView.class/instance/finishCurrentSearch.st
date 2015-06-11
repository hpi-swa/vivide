finder
finishCurrentSearch

	self searchModel endDeferAdd.
	
	"Restore previous selection."
	(self valueOfProperty: #previousSearchSelection ifAbsent: [#()]) ifNotEmpty: [:objects |
		self currentSearchView selectedNodes:	(self searchModel nodes select: [:node |
				objects includes: (node at: #object)])].
		
	self showInformation: 'Search finished.'.