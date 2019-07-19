accessing
recentScripts

	^ recentQueries ifNil: [recentQueries := OrderedCollection new]