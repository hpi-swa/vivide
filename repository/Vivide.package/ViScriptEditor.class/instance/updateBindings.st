as yet unclassified
updateBindings

	| code argumentNames argumentObjects helpPrefix helpSuffix helpScript helpBlock |

	argumentNames := (RBParser parseExpression: self visibleSourceCode onError: [:msg :i | self warningSent: 'Cannot parse code.'.^ self]) in: [:node | node isBlock ifTrue: [node argumentNames] ifFalse: [node receiver argumentNames]].
	
	argumentNames ifEmpty: [^ self].

	shouldPropose == true
		ifTrue: [helpPrefix := helpSuffix := '']
		ifFalse: [
			code := self sourceCode.
			helpPrefix := code
				copyFrom: 1
				to: self scriptPointer first - 1.
			helpSuffix := code
				copyFrom: self scriptPointer last + 1
				to: (code size max: self scriptPointer last)].
			
	helpScript := helpPrefix,	
		('[:{1} |
			argumentObjects := \{{2}\}.
			ViArgumentsCollected signal.
			Error signal: ''Should never see me!'']' format: {
				argumentNames joinSeparatedBy: ' :'.
				argumentNames joinSeparatedBy: $.}),
		helpSuffix.

	helpBlock := Compiler new
		evaluate: helpScript
		in: thisContext
		to: nil
		notifying: nil
		ifFail: [^ self]
		logged: true.
		
	[shouldPropose == true
		ifTrue: [helpBlock valueWithArguments: self input first asList]
		ifFalse: [
			helpBlock
				value: self input
				value: (self object valueOfProperty: #out ifAbsent: [OrderedCollection new])]
	] on: ViArgumentsCollected do: [:ex | "Abort." ].

	edit model bindings removeAll.
	argumentNames with: argumentObjects do: [:name :object |
		edit model bindings at: name put: object].