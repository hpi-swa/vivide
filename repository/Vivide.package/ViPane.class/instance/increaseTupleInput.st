tuples
increaseTupleInput

	| newObjects |
	self assert: self tupleSize > 0. "Must not be called otherwise."
	self tupleSize = 1 ifTrue: [^ self].
		
	self tupleSize = 2 ifTrue: [
		self objects: {self objects. {}}. ^ self].

"	newObjects := self objects.
	[tupleSize > newObjects size] whileTrue: [
		newObjects := newObjects, #(())].
"	self objects: self objects, #(()).