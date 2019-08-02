tests - toolset
test05BrowseClass

	| class window pane |
	class := self class.
	
	window := ToolSet browseClass: class. "Shorter: class browse -- but no tool window."
	pane := window pane.
	self
		assert: {class} equals: pane objects;
		assert: #outline asScript equals: pane script.