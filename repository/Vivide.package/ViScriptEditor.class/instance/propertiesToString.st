support - properties
propertiesToString

	^ self object
		ifNil: ['{}']
		ifNotNil: [:step | self propertiesToStringFrom: step properties associations, self specialProperties]