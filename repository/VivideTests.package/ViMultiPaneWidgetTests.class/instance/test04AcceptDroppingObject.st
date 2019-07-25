tests
test04AcceptDroppingObject

	| newPane |
	self assert: 1 equals: sut panes size.
	newPane := sut acceptDroppingObject: #(2 4) at: 0@0 from: pane.
	self assert: 2 equals: sut panes size.
	
	self assert: (newPane script valueOfProperty: #isNew).
	self assert: 1 equals: newPane connections size.
	self assert: 3 equals: pane connections size.
	self assert: newPane connections first source == pane.
	self assert: newPane connections first target == newPane.