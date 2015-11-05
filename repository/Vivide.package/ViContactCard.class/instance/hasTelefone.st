as yet unclassified
hasTelefone

	self raw linesDo: [:line | (line beginsWith: 'TEL')
		ifTrue: [^ true]].
	^ false