initialization
reset

	self model objects ifNotEmpty: [:objs |
		self lineEdit
			theText: objs first].
	
	(self model firstStep allPropertySteps first valueOfProperty: #autoAccept
		ifAbsent: [false])
			ifTrue: [self textEdit autoAccept: true.
					self connect: self textEdit signal: #textEdited: toSelector: #acceptChanges.].

	"Restore selection."
	self selectedNodes
		ifEmpty: [self yieldObject: self lineEdit theText asString]
		ifNotEmpty: [:nodes | self yield: nodes].