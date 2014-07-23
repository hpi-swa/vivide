accessing
firstVisibleQuery

	^ self visibleQueries ifEmpty: [] ifNotEmpty: [:q | q first]