as yet unclassified
organization

	^ organization ifNil: [
		self raw linesDo: [:line | (line beginsWith: 'ORG')
			ifTrue: [^ organization := line allButFirst: 4 "ORG:"]].
		^ organization := '']