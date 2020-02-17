tests - copying & serialization
test05CopyBreaksLocalCycle

	| script copy |
	script := {
		[:num | num + num].
		[:num | #text -> num asString].
	} asScript.
	script steps last instVarNamed: #next put: script steps first.
	self assert: script hasLocalCycle.
	
	copy := script copy.
	self
		deny: script hasLocalCycle; "Due to post-copy fixed in original script, too."
		deny: copy hasLocalCycle.