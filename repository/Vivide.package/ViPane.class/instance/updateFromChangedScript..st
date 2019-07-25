updating
updateFromChangedScript: evt
	"Watch for new property steps and update the view."
	
	self script
		ifNil: [^ self].

	(self script isMeta and: [evt item isMeta not])
		ifTrue: [^ self].

	(evt isRenamed and: [self script == evt item])
		ifTrue: [^ self updateLabel].

	(evt isPropertiesModified and: [evt onlyViewIndependentChanges])
		ifTrue: [^ self].

	self script allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].