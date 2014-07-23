toolbar - callbacks
doOperation: anOperation argument: anObject inGroup: aGroup

	(self respondsTo: anOperation)
		ifTrue: [self perform: anOperation with: anObject].