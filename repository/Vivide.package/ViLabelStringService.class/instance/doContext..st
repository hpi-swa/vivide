squeak - kernel
doContext: aContext

	^ (aContext outerContext ifNil: [''] ifNotNil: ['<font color="#0B61A4">[] in </font>']),
		(self doCompiledMethod: aContext method),
		(aContext selector == #doesNotUnderstand: ifFalse: [''] ifTrue: [
			' <font color="#0B61A4">#', (aContext isExecutingBlock
				ifFalse: [aContext tempAt: 1]
				ifTrue: [aContext tempAt: aContext numTemps]) selector escapeHtmlText, '</font>'])