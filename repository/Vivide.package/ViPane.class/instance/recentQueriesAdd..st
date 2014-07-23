actions
recentQueriesAdd: query

	query ifNil: [^ self].
	
	(self recentQueries includes: query)
		ifFalse: [self recentQueries addLast: query].