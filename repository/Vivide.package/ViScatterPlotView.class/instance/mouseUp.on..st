items
mouseUp: evt on: morph

	evt yellowButtonChanged ifTrue: [^ self invokeMenuOn: graph].

	evt shiftPressed ifFalse: [
		self deselectAllItemsOn: graph.
		self selectItem: morph.
		^ self].
	
	(morph valueOfProperty: #retainSelection) == true
		ifTrue: [morph removeProperty: #retainSelection. ^ self].

	(morph valueOfProperty: #isSelected) == true
		ifTrue: [self deselectItem: morph]
		ifFalse: [self selectItem: morph].