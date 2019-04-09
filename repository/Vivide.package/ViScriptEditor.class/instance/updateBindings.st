updating
updateBindings

	| code argumentNames outerArgumentNames argumentObjects helpPrefix helpSuffix helpScript helpBlock |

	"1) Collect the identifiers we are interested in."
	argumentNames := OrderedCollection new.
	([(RBParser parseExpression: self visibleSourceCode onError: [:msg :i | nil])] on: Error do: [nil])
		ifNotNil: [:node | argumentNames addAll: (node isBlock ifTrue: [node argumentNames] ifFalse: [node receiver argumentNames])].
	outerArgumentNames := OrderedCollection new.
	self hiddenBlockNodes do: [:node | outerArgumentNames addAll: node argumentNames].
	
	argumentNames, outerArgumentNames ifEmpty: [^ self].

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
		('[{1}{2} {3}
			argumentObjects := \{{4}\}.
			Transcript showln: argumentObjects asString.
			ViArgumentsCollected signal.
			Error signal: ''Should never see me!'']' format: {
				argumentNames ifEmpty: [''] ifNotEmpty: [':'].
				argumentNames joinSeparatedBy: ' :'.
				argumentNames ifEmpty: [''] ifNotEmpty: ['|'].
				argumentNames, outerArgumentNames joinSeparatedBy: '. '}),
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
	argumentObjects ifNil: [
		self warningSent: 'Failed to update bindings. Code unreachable?'.
		^ self].
	
	argumentNames, outerArgumentNames with: argumentObjects do: [:name :object |
		self textField model bindings at: name put: object].