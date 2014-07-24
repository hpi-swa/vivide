operations
doCompiledMethod: aCompiledMethod

	panel := self
		codeboxFor:
			'"', aCompiledMethod methodClass name, 
			' (', (aCompiledMethod methodClass organization categoryOfElement: aCompiledMethod selector)  ,')"', String cr,
			aCompiledMethod getSource asString
		inClass: aCompiledMethod methodClass.