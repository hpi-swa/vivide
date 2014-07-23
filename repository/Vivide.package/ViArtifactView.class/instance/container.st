as yet unclassified
container

	^ self submorphs
		ifEmpty: []
		ifNotEmpty: [:morphs | morphs first]