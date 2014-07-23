accessing
recentQueries

	^ recentQueries ifNil: [recentQueries := OrderedCollection new]