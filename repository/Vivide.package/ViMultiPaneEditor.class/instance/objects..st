accessing - objects
objects: someObjects

	self inputPane
		ifNil: [Error signal: 'You have to add one pane at least.']
		ifNotNil: [:pane | pane objects: someObjects].