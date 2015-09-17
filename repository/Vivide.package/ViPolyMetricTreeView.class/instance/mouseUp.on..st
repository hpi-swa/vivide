as yet unclassified
mouseUp: evt on: item

	evt shiftPressed ifFalse: [
		self deselectAll.
		self selectItem: item.
		^ self].
	
	(item hasProperty: #retainSelection)
		ifTrue: [item removeProperty: #retainSelection. ^ self].

	(self selectedItems includes: item)
		ifTrue: [self deselectItem: item]
		ifFalse: [self selectItem: item].