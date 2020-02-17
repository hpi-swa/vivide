squeak - kernel
doCompiledMethod: aMethod

	^ (super doCompiledMethod: aMethod) asTextFromHtml
"	^ (aMethod methodClass isMeta or: [aMethod isTraitMethod])
		ifTrue: [(super doCompiledMethod: aMethod) asHtmlText]
		ifFalse: [(super doCompiledMethod: aMethod)]"