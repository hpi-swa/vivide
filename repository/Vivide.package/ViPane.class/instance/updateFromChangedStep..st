updating
updateFromChangedStep: evt
	"Watch for new property steps and update the view."
	
	self currentQuery
		ifNil: [^ self].

	(self currentQuery isMeta and: [evt item isMeta not])
		ifTrue: [^ self].

	evt isPropertiesModified
		ifTrue: [^ self updateFromChangedStepProperties: evt].

	"evt isRenamed
		ifTrue: [^ self]."
		
	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].