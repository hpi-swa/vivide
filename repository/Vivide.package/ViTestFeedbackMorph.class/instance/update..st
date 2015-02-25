as yet unclassified
update: evt

	self block ifNil: [^ self].

	[self block value
		ifTrue: [self color: Color green]
		ifFalse: [self color: Color red].
	] on: Exception do: [self color: Color red].