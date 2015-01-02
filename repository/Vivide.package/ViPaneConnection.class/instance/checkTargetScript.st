as yet unclassified
checkTargetScript
	"Provide defaults if there are no scripts on target site."

	self target ifNil: [^ self].
	self source ifNil: [^ self].

	self target currentQuery ifNotNil: [^ self].
	self source currentQuery ifNil: [^ self].
	
	self target currentQuery: (self target tupleSize <= 1
		ifTrue: [ [:object | object] asScript ]
		ifFalse: [
			ViScriptPart createIdentityForTuple: (self target objects
				ifEmpty: [Array new: self target tupleSize withAll: Object]
				ifNotEmpty: [:objs | objs first "tuple" collect: [:o | o class]]) ]).
		
	self target currentQuery
		setProperty: #isNew toValue: true;   
		adoptOrganization: self source currentQuery organization.