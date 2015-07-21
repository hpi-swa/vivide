tests
test17KeepAppropriateScript

	| script newScript |
	sut objects: #(1 2 3).
	script := sut currentQuery.
	
	self assert: (sut currentQuery valueOfProperty: #isNew).

	script setProperty: #inputKind toValue: Integer.
	script setProperty: #isNew toValue: false.
	sut objects: #(a b c).
	
	self deny: (script valueOfProperty: #isNew).
	self assert: sut currentQuery ~~ script.

	newScript := sut currentQuery.

	sut objects: #(1 2 3).
	self assert: (sut appropriateQueries includes: newScript).
	self assert: sut currentQuery == newScript. "No change.... *sigh*"