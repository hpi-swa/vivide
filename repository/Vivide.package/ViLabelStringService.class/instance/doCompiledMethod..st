squeak - kernel
doCompiledMethod: aMethod
	
	| label |
	label := aMethod selector escapeHtmlText.
		
	aMethod methodClass isMeta ifTrue: [label := '<u>', label,'</u>'].
	aMethod isTraitMethod ifTrue: [
		aMethod methodHome isClassTrait
			ifTrue: [label := '<u>', label, '</u>'].
		label := '<font color="#3c7113">', label, '</font>'].
	aMethod isDeprecated ifTrue: [
		label := '<font color="#aaaaaa"><s>', label, '</s></font>'].
	
	^ label