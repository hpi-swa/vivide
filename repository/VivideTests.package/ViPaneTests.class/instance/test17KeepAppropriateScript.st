tests
test17KeepAppropriateScript

	| script newScript |
	sut objects: #(1 2 3).
	script := sut script.
	
	self assert: (sut script valueOfProperty: #isNew).

	script setProperty: #inputKind toValue: Integer.
	script setProperty: #isNew toValue: false.
	sut objects: #(a b c).
	
	self deny: (script valueOfProperty: #isNew).
	self assert: sut script ~~ script.

	newScript := sut script.

	sut objects: #(1 2 3).
	self assert: (sut appropriateScripts includes: newScript).
	self assert: sut script == newScript. "No change.... *sigh*"