tests - construction
test05ObjectsOnly
	"If there is no specific script, an identity script should be used."
	
	| pane |
	pane := ViPane new objects: #(1 2 3).
	self
		assert: 1 equals: pane tupleSize;
		assert: 1 equals: pane script tupleSize;
		assert: #(1 2 3) equals: pane objects;
		assert: #(1 2 3) equals: pane allResults.

	pane objects: #( (1 2) (a b) ).
	self
		assert: 2 equals: pane tupleSize;
		assert: 2 equals: pane script tupleSize;
		assert: #( (1 2) (a b) ) equals: pane objects;
		assert: #( (1 2) (a b) ) equals: pane allResults.