tests - results
test02AllResultsForRecursiveScript

	| pane script |
	script := {
		[:num | #text -> num asString].	
		[:num | num > 0 ifTrue: [num - 1]].
		1
	} asScript.
	pane := ViPane new
		script: script;
		objects: #(4 3).

	"Note the breadth-first iteration of the model tree."
	self assert: #(4 3 3 2 2 1 1 0 0) equals: pane allResults.