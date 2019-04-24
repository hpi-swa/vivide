tests - enumeration
test01Steps

	| script |
	script := {
		[:num | num + num].
		[:num | #text -> num asString].
	} asScript.

	self assert: 2 equals: script steps size.