accessing
commands

	^ self submorphs
		collect: [:m | m valueOfProperty: #command ifAbsent: [nil]]
		thenSelect: [:m | m notNil]