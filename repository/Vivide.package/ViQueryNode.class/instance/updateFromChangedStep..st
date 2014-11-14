query change events
updateFromChangedStep: evt

	"Only things that could modify the result of #processSteps."
	(((evt isPropertiesModified
		or: [evt isDefinitionChanged])
		or: [evt isNextChanged])
		or: [evt item isReferenceStep and: [evt isReferenceChanged]])
			ifFalse: [^ self].
	
	"Only if at least one of my next steps is this changed step."
	self firstStep ifNotNil: [:f |
		f nextStepsDo: [:step |
			evt item == step ifTrue: [
				self refresh. ^ self]]].