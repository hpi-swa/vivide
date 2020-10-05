as yet unclassified
mouseDown: evt on: morph

	evt redButtonChanged ifFalse: [^ self "menu"].
	
	(morph valueOfProperty: #isSelected) == true
		ifTrue: [^ self].

	evt shiftPressed ifFalse: [
		self deselectAllItemsOn: graph.
		self selectItem: morph.
		^ self].

	(morph valueOfProperty: #isSelected) == true
		ifTrue: [self deselectItem: morph]
		ifFalse: [self selectItem: morph].
	morph setProperty: #retainSelection toValue: true.