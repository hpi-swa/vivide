script change events
updateFromChangedStep: evt

	| resetNotifications |
	self firstStep ifNil: [^ self].
	
	"Only the notification property affects model nodes."
	(evt isPropertiesModified and: [evt onlyModelIndependentChanges])
		ifTrue: [^ self].
	
	"Only things that could modify the result of #processSteps."
	((evt isSourceCodeChanged
		or: [evt isPropertiesModified])
		or: [evt isNextChanged])
			ifFalse: [^ self].
		
	"Only if at least one of my next steps is this changed step."
	resetNotifications := evt isPropertiesModified and: [evt newProperties includesKey: #notifier].
	self firstStep allStepsDo: [:step |
		evt item == step ifTrue: [
			resetNotifications ifTrue: [
				self
					clearInputChangeNotifications;
					setInputChangeNotifications].
			self triggerUpdateChildren.
			^ self]].