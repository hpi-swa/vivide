squeak - kernel
doCompiledMethod: aMethod  

	^ ViLazyForm init: [self doCompiledMethodReally: aMethod]