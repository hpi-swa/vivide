updating
updateFromChangedScript: event

	self object ifNil: [^ self].
	self isDoingNonReentrantWork ifTrue: [^ self].
	
	(event item == self object or: [event item == self object definition])
		ifFalse: [^ self].
		
	self hasUnacceptedChanges ifTrue: [
		"Update the text representation of the not editable properties."
		(self areScriptPropertiesVisible not and: [event isPropertiesModified])
				ifTrue: [self setFullSourceCodeProperties].
		^ self].

	self triggerDeferredClear.