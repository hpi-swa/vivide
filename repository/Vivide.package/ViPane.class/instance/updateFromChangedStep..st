updating
updateFromChangedStep: evt
	"Watch for new property steps and update the view."
	
	self currentQuery ifNil: [^ self].

	evt isPropertiesModified
		ifTrue: [^ self updateFromChangedStepProperties: evt].

	(((evt isNextChanged and: [
		"Property added?"
		((evt next notNil and: [evt next isPropertyStep])
			"Property removed?"
			or: [evt oldNext notNil and: [evt oldNext isPropertyStep]])
			"New level in tree? Show tree structure!"
			or: [evt item isPropertyStep and: [evt next isNil or: [evt next isPropertyStep not]]]])
				"New reference? Anything could happen now! :-)"
				or: [evt isReferenceChanged])
				or: [evt isViewDefinitionChanged and: [evt item == self currentQuery]])
					ifFalse: [^ self].
	
	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].