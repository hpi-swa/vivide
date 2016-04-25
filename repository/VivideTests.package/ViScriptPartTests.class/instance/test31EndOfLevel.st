tests
test31EndOfLevel

	| script |
	script := {
		[:num | num * num] -> {#id -> #first}.
		[:num | #text -> num asString].
		} asScript.
	script adoptOrganization: organization.
	self assert: script steps second isEndOfLevel.
	self deny: script steps first isEndOfLevel.

	script := {
		[:num | num * num] -> {#id -> #second}
		} asScript.
	script adoptOrganization: organization.
	self assert: script steps first isEndOfLevel.

	script := {
		[#first] -> {#id -> #third}.
		} asScript.
	script adoptOrganization: organization.
	self assert: script steps first isEndOfLevel.

	script := {
		[#first] -> {#id -> #fourth}.
		[:num | #text -> num printString].
		} asScript.
	script adoptOrganization: organization.
	self deny: script steps first isEndOfLevel.
	self assert: script steps second isEndOfLevel.