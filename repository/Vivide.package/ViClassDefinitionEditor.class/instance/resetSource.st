initialization
resetSource

	self theClass ifNil: [^ self].
	
	self artifact sourceCode:
		self theClass theNonMetaClass definition,
		'.', String cr,
		self theClass theMetaClass definition.