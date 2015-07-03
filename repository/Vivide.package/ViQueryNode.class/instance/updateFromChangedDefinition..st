query change events
updateFromChangedDefinition: evt

	(evt isPropertiesModified or: [evt isSourceCodeChanged not])
		ifTrue: [^ self].

	self firstStep ifNotNil: [:f |
		f nextStepsDo: [:step |
			evt item == step definition ifTrue: [
				self refresh. ^ self]]].