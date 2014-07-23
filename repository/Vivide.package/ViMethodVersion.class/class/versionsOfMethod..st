scanning
versionsOfMethod: methodReference 
	
	^ [methodReference isCompiledMethod
		ifTrue: [self scan: SourceFiles from: methodReference sourcePointer]
		ifFalse: [
			| class selector |
			class := methodReference actualClass.
			selector := methodReference methodSymbol.		
			self scan: SourceFiles from: (class compiledMethodAt: selector) sourcePointer]]
		on: Error
		do: [#()]