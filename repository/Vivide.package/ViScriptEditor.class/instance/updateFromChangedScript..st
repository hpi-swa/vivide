as yet unclassified
updateFromChangedScript: event

	self object
		ifNil: [^ self].
	(self hasProperty: #isUpdating)
		ifTrue: [^ self].
	(event item == self object or: [event item == self object definition])
		ifFalse: [^ self].
	self hasUnacceptedChanges
		ifTrue: [^ self].

	self clear.