updating
updateFromChangedViewDefinition: evt

	self currentQuery ifNil: [^ self].
	
	self currentQuery == evt item
		ifTrue: [self triggerUpdateView].