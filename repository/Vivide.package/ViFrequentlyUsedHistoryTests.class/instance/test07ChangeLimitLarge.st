tests
test07ChangeLimitLarge

	sut limit: 10.
	(Smalltalk allClasses first: 10) do: [:cls | sut addObject: cls].
	self assert: 10 equals: sut size.
	sut limit: 1.
	self assert: 1 equals: sut size.