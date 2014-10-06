as yet unclassified
propertiesToString

	^ self object
		ifNil: ['{}']
		ifNotNil: [:step | self propertiesToStringFrom: step properties]