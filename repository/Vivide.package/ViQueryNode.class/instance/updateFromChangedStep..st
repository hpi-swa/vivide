query change events
updateFromChangedStep: evt

	self firstStep ifNil: [^ self].
	
	"Only things that could modify the result of #processSteps."
	(((evt isPropertiesModified
		or: [evt isDefinitionChanged])
		or: [evt isNextChanged])
		or: [evt item isReferenceStep and: [evt isReferenceChanged]])
			ifFalse: [^ self].
	
	"Special handling for meta scripts. Do not traverse the whole chain."
	self flag: #metaScript.
	((self depth = 0 and: [self firstStep next notNil]) and: [self firstStep next isMeta])
		ifTrue: [
			self firstStep stepsDo: [:step |
			evt item == step ifTrue: [
				self refresh. ^ self]].
			^ self].
	
	"Only if at least one of my next steps is this changed step."
	self firstStep nextStepsDo: [:step |
		evt item == step ifTrue: [
			self refresh. ^ self]].