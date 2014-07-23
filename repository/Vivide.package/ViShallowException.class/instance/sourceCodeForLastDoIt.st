as yet unclassified
sourceCodeForLastDoIt

	^ (stack detect: [:ctxt | ctxt selector isDoIt] ifNone: [])
		ifNil: ['']
		ifNotNil: [:ctxt | ctxt sourceCode]