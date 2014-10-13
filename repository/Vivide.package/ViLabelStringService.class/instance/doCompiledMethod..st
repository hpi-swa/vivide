operations
doCompiledMethod: aMethod
	
	| label |
	label := aMethod selector escapeHtmlText.
		
	aMethod methodClass isMeta ifTrue: [label := '<u>', label,'</u>'].
	aMethod isTraitMethod ifTrue: [
		aMethod methodHome isClassTrait
			ifTrue: [label := '<u>', label, '</u>'].
		label := '<font color="#3c7113">', label, '</font>'].
	
	^ label