accessing
experiment: anObject
	
	experiment = anObject ifTrue: [^ self].

	experiment := anObject.
	
	self experiment ifNotNil: [:exp | 
		exp reset.
		self currentTask: nil.
		self doNextTask].