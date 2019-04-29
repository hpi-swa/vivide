vivide - kernel
doScriptPart: aStep

	^ aStep isGlobal
		ifTrue: ['-']
		ifFalse: [aStep baseClass name]