support
propertyTrace

	^ Array streamContents: [:s |
		editor propertyBar submorphsDo: [:m |
			m text notEmpty ifTrue: [s nextPut: m text asString]]]