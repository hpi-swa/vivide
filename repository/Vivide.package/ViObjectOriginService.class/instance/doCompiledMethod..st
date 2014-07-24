operations
doCompiledMethod: aMethod

	^ '{1} ({2})' format: {
		aMethod methodClass name.
		aMethod methodClass organization categoryOfElement: aMethod selector}