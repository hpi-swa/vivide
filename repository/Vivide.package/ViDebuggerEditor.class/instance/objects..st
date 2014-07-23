accessing - objects
objects: someObjects

	someObjects ifEmpty: [^ self].
	self debugger: someObjects first.