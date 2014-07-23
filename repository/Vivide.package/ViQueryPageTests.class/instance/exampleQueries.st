fixtures
exampleQueries

	^ self class selectors
		select: [:symbol | symbol beginsWith: #exampleQuery]
		thenCollect: [:symbol | self perform: symbol]