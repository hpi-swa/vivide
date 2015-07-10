as yet unclassified
createIdentityScript

	| script |
	script := (self tupleSize <= 1
		ifTrue: [ [:object | object] asScript ]
		ifFalse: [
			ViScriptPart createIdentityForTuple: (self objects
				ifEmpty: [Array new: self tupleSize withAll: Object]
				ifNotEmpty: [:objs | objs first "tuple" collect: [:o | o class]]) ]).

	script setProperty: #isNew toValue: true.

	self validConnections
		detect: [:c | c target == self and: [c source currentQuery notNil]]
		ifFound: [:c | script adoptOrganization: c source currentQuery organization]
		ifNone: [self recentQueries
			ifEmpty: ["Keep the new organization."]
			ifNotEmpty: [:scripts | script adoptOrganization: scripts first organization]].
	^ script