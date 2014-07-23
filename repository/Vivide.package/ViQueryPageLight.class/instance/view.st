accessing - ui
view

	^ self submorphs ifEmpty: [nil] ifNotEmpty: [:morphs | morphs first]