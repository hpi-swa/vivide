tests
test13ConvertListWithLocalReference

	| script |
	script := ViScriptPart convertList: {
		[:number | number * number].
		[:number | #text -> number asString].
		1}.
	
	self assert: 3 equals: script allSteps size.
	self assert: script steps last isReference.
	self assert: script steps last reference == script.