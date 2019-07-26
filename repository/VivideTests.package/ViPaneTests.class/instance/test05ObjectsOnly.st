tests - construction
test05ObjectsOnly

	| pane |
	pane := ViPane new objects: #(1 2 3).
	
	self
		assert: pane script notNil;
		assert: #(1 2 3) equals: pane objects;
		assert: #(1 2 3) equals: pane allResults.