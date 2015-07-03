updating
updateFromChangedStep: evt
	"Watch for new property steps and update the view."
	
	self currentQuery
		ifNil: [^ self].

	evt isPropertiesModified
		ifTrue: [^ self updateFromChangedStepProperties: evt].

	(self currentQuery isMeta and: [evt item isMeta not])
		ifTrue: [^ self].

	evt isRenamed
		ifTrue: [^ self].
		
	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].