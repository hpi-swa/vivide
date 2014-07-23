memento - data
acceptChanges

	self ensureProtocol ifFalse: [^ self].

	self ui nameEdit acceptChanges.
	
	self clear.