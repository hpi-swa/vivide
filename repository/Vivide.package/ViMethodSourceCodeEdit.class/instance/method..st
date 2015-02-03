accessing
method: aCompiledMethod

	method := aCompiledMethod.
	
	self theClass: (method ifNotNil: #methodClass).