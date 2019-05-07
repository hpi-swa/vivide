support
navigationTrace

	^ Array streamContents: [:s |
		editor navigationBar submorphsDo: [:m |
			m text notEmpty ifTrue: [s nextPut: m text asString]]]