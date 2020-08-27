as yet unclassified
addAllPanes: somePanes

	somePanes do: [:pane |
		self
			objects: pane objects
			for: pane].

	self panes addAll: somePanes.
	self updateModelInput.
	
	self addAllMorphs: somePanes.
	
	somePanes first activate.
	
	^ somePanes