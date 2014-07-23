updating
updateFromChangedViewDefinition: evt

	self currentQuery ifNil: [^ self].
	
	(self currentQuery viewDefinition == evt item
		and: [evt isSourceCodeChanged])
			ifTrue: [self triggerUpdateViews].