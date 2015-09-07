initialization
reset

	self model objects ifNotEmpty: [:objs |
		self lineEdit
			theText: objs first;
			select: (1 to: 0) "none"].
	
	"Restore selection."
	self yield: self selectedNodes.