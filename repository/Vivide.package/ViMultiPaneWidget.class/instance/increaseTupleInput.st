tuples
increaseTupleInput

	| newObjects |
	self assert: self tupleSize > 0. "Must not be called otherwise."
	self tupleSize = 1 ifTrue: [^ self].
	
	self objects: (
		self tupleSize = 2
			ifTrue: [ {self objects. {}} ]
			ifFalse: [ self objects, #(()) ] ).