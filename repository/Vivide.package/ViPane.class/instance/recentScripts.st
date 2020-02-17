script selection - scripts
recentScripts

	^ recentQueries ifNil: [recentQueries := OrderedCollection new]