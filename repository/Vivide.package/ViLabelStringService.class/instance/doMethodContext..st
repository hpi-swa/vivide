operations - context
doMethodContext: aMethodContext

	^ (aMethodContext outerContext ifNil: [''] ifNotNil: ['<font color="#0B61A4">[] in </font>']),
		(self doCompiledMethod: aMethodContext method),
		(aMethodContext selector == #doesNotUnderstand: ifFalse: [''] ifTrue: [
			' <font color="#0B61A4">#', (aMethodContext isExecutingBlock
				ifFalse: [aMethodContext tempAt: 1]
				ifTrue: [aMethodContext tempAt: aMethodContext numTemps]) selector escapeHtmlText, '</font>'])