as yet unclassified
reset

	self model ifNil: [^ self].
	self model objects ifNotEmpty: [:objs |
		self lineEdit theText: objs first].