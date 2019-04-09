updating
updateBindings

	| code argumentNames argumentObjects helpPrefix helpSuffix helpScript helpBlock |

	argumentNames := (RBParser parseExpression: self visibleSourceCode onError: [:msg :i | self warningSent: 'Cannot parse code.'.^ self]) in: [:node | node isBlock ifTrue: [node argumentNames] ifFalse: [node receiver argumentNames]].
	
	argumentNames ifEmpty: [^ self].

	self isWizardActive
		ifTrue: [helpPrefix := helpSuffix := '']
		ifFalse: [
			code := self scriptSourceCode.
			helpPrefix := code
				copyFrom: 1
				to: self fullSourceCodeInterval first - 1.
			helpSuffix := code
				copyFrom: self fullSourceCodeInterval last + 1
				to: (code size max: self fullSourceCodeInterval last)].
			
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
		
	[self isWizardActive
		ifTrue: [helpBlock valueWithArguments: self input first asList]
		ifFalse: [
			helpBlock
				value: self input
				value: (self thisStep valueOfProperty: #out ifAbsent: [OrderedCollection new])]
	] on: ViArgumentsCollected do: [:ex | "Abort." ].

	self textField model bindings removeAll.
	argumentNames with: argumentObjects do: [:name :object |
		self textField model bindings at: name put: object].