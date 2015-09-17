event handling
mouseDown: evt on: item

	(self selectedItems includes: item)
		ifTrue: [^ self].

	evt shiftPressed ifFalse: [
		self deselectAll.
		self selectItem: item.
		^ self].

	(self selectedItems includes: item)
		ifTrue: [self deselectItem: item]
		ifFalse: [self selectItem: item].
	item setProperty: #retainSelection toValue: true. 