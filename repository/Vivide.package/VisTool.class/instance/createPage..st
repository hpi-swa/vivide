ui building
createPage: someQuerySpecs
	"One page gets all queries."
	
	| newQueries newPage |
	newQueries := someQuerySpecs collect: [:spec |
		(ViQueryStep convertList: spec value) in: [:query |
			query
				id: spec key first;
				setViewSpec: spec key second]].
	
	newPage := ViQueryPageLight new
		queries: newQueries;
		yourself.
	
	pages add: newPage.
	
	^ newPage