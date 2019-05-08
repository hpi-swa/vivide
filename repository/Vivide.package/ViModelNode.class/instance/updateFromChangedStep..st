script change events
updateFromChangedStep: evt

	self firstStep ifNil: [^ self].
	
	"Only the notification property affects model nodes."
	(evt isPropertiesModified and: [evt onlyModelIndependentChanges])
		ifTrue: [^ self].
	
	"Only things that could modify the result of #processSteps."
	((evt isPropertiesModified
		or: [evt isDefinitionChanged])
		or: [evt isNextChanged])
			ifFalse: [^ self].
	
	"Special handling for meta scripts. Do not traverse the whole chain."
	self flag: #metaScript.
	((self depth = 0 and: [self firstStep next notNil]) and: [self firstStep next isMeta])
		ifTrue: [
			self firstStep stepsDo: [:step |
			evt item == step ifTrue: [
				self triggerUpdateChildren. ^ self]].
			^ self].
	
	"Only if at least one of my next steps is this changed step."
	self firstStep allStepsDo: [:step |
		evt item == step ifTrue: [
			(evt isPropertiesModified and: [evt newProperties includesKey: #notifier])
				ifTrue: [self clearUpdateNotifications; setUpdateNotifications].
			self triggerUpdateChildren.
			^ self]].