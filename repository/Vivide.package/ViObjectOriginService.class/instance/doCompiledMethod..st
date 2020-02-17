squeak - kernel
doCompiledMethod: aMethod

	^ '{1} ({2})' format: {
		aMethod methodClass theNonMetaClass name.
		aMethod methodClass organization categoryOfElement: aMethod selector}