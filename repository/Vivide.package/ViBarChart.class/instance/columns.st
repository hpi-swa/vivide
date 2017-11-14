accessing
columns

	^ self content submorphs
		ifEmpty: [#()]
		ifNotEmpty: [:m | m allButFirst]