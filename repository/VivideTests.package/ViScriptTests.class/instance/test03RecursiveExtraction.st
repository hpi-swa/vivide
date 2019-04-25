tests - recursion
test03RecursiveExtraction
	
	| script |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
	} asScript.

	self assert: {script next} equals: script allExtractionSteps asArray.