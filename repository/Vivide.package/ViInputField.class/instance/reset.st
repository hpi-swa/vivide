initialization
reset

	self model objects ifNotEmpty: [:objs |
		self lineEdit
			theText: objs first].
	
	"Restore selection."
	self selectedNodes
		ifEmpty: [self yieldObject: self lineEdit theText asString]
		ifNotEmpty: [:nodes | self yield: nodes].