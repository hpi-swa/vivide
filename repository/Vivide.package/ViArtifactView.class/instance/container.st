accessing
container

	^ self submorphs
		ifEmpty: []
		ifNotEmpty: [:morphs | morphs first]