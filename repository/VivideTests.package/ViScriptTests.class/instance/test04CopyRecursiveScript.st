tests - copying & serialization
test04CopyRecursiveScript

	| script copy |
	script := {
		[:num | num + num].
		[:num | #text -> num asString].
		1.
	} asScript.
	copy := script copy.
	
	self
		assert: script isRecursive;
		assert: copy isRecursive.
	
	script steps with: copy steps do: [:oStep :cStep |
		self assert: oStep sourceCode equals: cStep sourceCode].