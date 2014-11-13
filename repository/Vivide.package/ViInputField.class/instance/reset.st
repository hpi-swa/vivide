initialization
reset

	self model ifNil: [^ self].
	self model objects ifNotEmpty: [:objs |
		self lineEdit
			theText: objs first;
			select: (1 to: 0) "none"].