toolbar - callbacks
doOperation: anOperation inGroup: aGroup

	(self respondsTo: anOperation)
		ifTrue: [self perform: anOperation].