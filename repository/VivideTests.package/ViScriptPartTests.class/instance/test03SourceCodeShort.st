tests
test03SourceCodeShort

	| script code block |
	block := [:obj | obj children].
	code := '[:obj | obj children]'.
	script := block asScript.
	self assert: code = script sourceCodeShort.