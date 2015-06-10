as yet unclassified
text

	^ self model
		ifNil: ['']
		ifNotNil: [:m | (m firstNode at: #text ifAbsent: ['']) copy]