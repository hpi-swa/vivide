initialization - panes
addPane: aPane

	self assert: [(self panes identityIncludes: aPane) not].
	
	self
		objects: aPane objects
		for: aPane.

	self panes add: aPane.
	self updateModelInput.
		
	^ aPane