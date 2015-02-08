memento - cleanup
clear

	super clear.

	self step ifNotNil: [:q |
		self artifact theText: (String streamContents: [:s |
			q stepsDo: [:step | s
				nextPutAll: step definition sourceCode;
				nextPut: $.;
				nextPut: Character cr]])
		].