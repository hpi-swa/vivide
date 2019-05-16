updating
updateFromChangedScript: evt
	"Watch for new property steps and update the view."
	
	self currentQuery
		ifNil: [^ self].

	(self currentQuery isMeta and: [evt item isMeta not])
		ifTrue: [^ self].

	(evt isRenamed and: [self currentQuery == evt item])
		ifTrue: [^ self updateLabel].

	(evt isPropertiesModified and: [evt onlyViewIndependentChanges])
		ifTrue: [^ self].

	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].