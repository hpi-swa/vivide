operations
doCompiledMethod: aMethod
	
	| label |
	label := aMethod selector.
	
	aMethod methodClass isMeta ifTrue: [label := '<u>', label,'</u>'].
	aMethod isTraitMethod ifTrue: [label := '<i>', label, '</i>'].
	
	^ label