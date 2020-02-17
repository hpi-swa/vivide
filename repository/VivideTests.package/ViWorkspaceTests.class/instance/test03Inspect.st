tests - toolset
test03Inspect

	| object window pane |
	object := Dictionary newFrom: {
		#firstname -> 'John'.
		#lastname -> 'Doe'. }.
		
	window := ToolSet inspect: object. "Shorter: object inspect -- but no tool window."
	pane := window pane.
	self
		assert: {object} equals: pane objects;
		assert: #objectExplorer asScript equals: pane script.

	window := vivide openExplorer: object.
	pane := window pane.
	self
		assert: {object} equals: pane objects;
		assert: #objectExplorer asScript equals: pane script.