as yet unclassified
update: evt

	self block ifNil: [^ self].

	[(ViActiveVivide value: vivide during: self block)
		ifTrue: [self color: Color green]
		ifFalse: [self color: Color red].
	] on: Exception do: [self color: Color red].