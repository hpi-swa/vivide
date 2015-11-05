as yet unclassified
email

	self raw linesDo: [:line | (line beginsWith: 'EMAIL')
		ifTrue: [^ line copyFrom: (line indexOf: $:) + 1 to: line size]].
	^ ''