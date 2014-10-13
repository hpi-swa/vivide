operations
doCompiledMethod: aMethod

	^ (super doCompiledMethod: aMethod) asHtmlText
"	^ (aMethod methodClass isMeta or: [aMethod isTraitMethod])
		ifTrue: [(super doCompiledMethod: aMethod) asHtmlText]
		ifFalse: [(super doCompiledMethod: aMethod)]"