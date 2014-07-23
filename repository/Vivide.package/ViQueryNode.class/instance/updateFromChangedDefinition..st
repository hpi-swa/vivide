query change events
updateFromChangedDefinition: evt

	evt isSourceCodeChanged ifFalse: [^ self].

	self firstStep ifNotNil: [:f |
		f nextStepsDo: [:step |
			evt item == step definition ifTrue: [
				self refresh. ^ self]]].