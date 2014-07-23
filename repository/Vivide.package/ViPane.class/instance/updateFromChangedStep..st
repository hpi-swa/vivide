updating
updateFromChangedStep: evt
	"Watch for new property steps and update the view."
	
	self currentQuery ifNil: [^ self].
	
	(((evt isNextChanged and: [
		"Property added?"
		(evt next notNil and: [evt next isPropertyStep])
			"Property removed?"
			or: [evt oldNext notNil and: [evt oldNext isPropertyStep]]])
				"New reference? Anything could happen now! :-)"
				or: [evt isReferenceChanged])
				or: [evt isViewDefinitionChanged and: [evt item == self currentQuery]])
					ifFalse: [^ self].
	
	self currentQuery allStepsDo: [:step |
		step == evt item ifTrue: [self triggerUpdateView. ^ self]].