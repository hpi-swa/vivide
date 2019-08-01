tests - construction
test07AddScript
	
	| pane script |
	pane := ViPane new.
	script := self addScript: [:num | num * num].
	pane script: script.
	
	pane objects: #(1 2 3).
	self assert: #(1 4 9) equals: pane allResults.
	
	pane addScript. "Creates an identity script."
	self assert: #(1 2 3) equals: pane allResults.