tests - results
test01AllResults

	| pane |
	pane := ViPane new objects: #(1 2 3).
	
	pane script: [:num | num * num] asScript.
	self assert: #(1 4 9) equals: pane allResults.

	pane script: {[:num | num * num]. [:num | num + num]} asScript.
	self assert: #(2 8 18) equals: pane allResults.
	
	"Note the breadth-first iteration of the model tree."
	pane script: {[:num | num * num]. [:num | #text -> num asString]. [:num | num + num]} asScript.
	self assert: #(1 4 9 2 8 18) equals: pane allResults.	