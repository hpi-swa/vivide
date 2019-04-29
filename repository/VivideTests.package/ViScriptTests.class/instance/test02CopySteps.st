tests - copying & serialization
test02CopySteps

	| script copy |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	copy := script copy.
	
	script steps with: copy steps do: [:oStep :cStep |
		self assert: oStep sourceCode equals: cStep sourceCode].