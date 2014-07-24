operations
doCompiledMethod: aMethod  

	^ ViLazyForm init: [self doCompiledMethodReally: aMethod]