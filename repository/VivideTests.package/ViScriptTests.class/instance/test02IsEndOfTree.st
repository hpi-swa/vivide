tests
test02IsEndOfTree

	| script |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].		
	} asScript.
	
	script steps allButLast do: [:step |
		self deny: script isEndOfTree].
	
	self assert: script steps last isEndOfTree.