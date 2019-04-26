tests
test01IsEndOfLevel

	| one two |
	one := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.

	self
		deny: one isEndOfLevel;
		assert: one next isEndOfLevel.

	"Ignore default properties."
	two := [:num | num * num] asScript.
	self assert: two isEndOfLevel.