as yet unclassified
doesNotUnderstand: msg

	| code |
	(msg numArgs > 0 and: [msg arguments anySatisfy: [:object |
		((self class isOfPrimitiveType: object) not and: [object isBehavior not] and: [object isBlock not])]])
			ifTrue: [^ super doesNotUnderstand: msg].
	
	msg numArgs = 0
		ifTrue: [code := '(', self accessString, ') ', msg selector]
		ifFalse: [
			code := '(', self accessString, ') ', 
				(((msg selector findTokens: $:) collectWithIndex: [:tok :i |
					tok, ': ', (msg arguments at: i) storeString ]) joinSeparatedBy: ' ')].
	^ self class evaluateCodeRemote: code