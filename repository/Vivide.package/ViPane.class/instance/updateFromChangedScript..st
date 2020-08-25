updating
updateFromChangedScript: evt
	"Watch for new property steps and update the view."
	
	self script
		ifNil: [^ self].

	(evt isPropertiesModified and: [evt oldProperties includesKey: #label])
		ifTrue: [self updateLabel].

"	(evt isPropertiesModified and: [evt oldProperties includesKey: #color])
		ifTrue: [^ self updateColor].
"
	(evt isPropertiesModified and: [evt onlyViewIndependentChanges])
		ifTrue: [^ self].

	self script allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].