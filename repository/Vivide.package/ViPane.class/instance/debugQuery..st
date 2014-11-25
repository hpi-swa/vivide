actions
debugQuery: aQuery

	| tupleSize input |
	self owner ifNil: [^ self].

	tupleSize := self tupleSize.
	input := tupleSize > 1
		ifTrue: [self objects]
		ifFalse: [self objects ifNotEmpty: [{self objects}] ifEmpty: [#()]].
		
	ViMultiPaneEditor open: #artifacts for: (input ifEmpty: [{}] ifNotEmpty: [{input}]), aQuery steps.