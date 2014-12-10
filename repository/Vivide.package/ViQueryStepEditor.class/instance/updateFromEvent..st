updating
updateFromEvent: evt

	(evt isModified and: [evt item == self step])
		ifFalse: [^ self].
	
	evt isPropertiesModified
		ifTrue: [^ self].
	
	evt isDefinitionChanged
		ifTrue: [self currentDefinition: evt definition].
	evt isNextChanged
		ifTrue: [self redrawLater. "see #knowsObject: and its senders"].
	evt isViewDefinitionChanged
		ifTrue: [self currentView: evt viewDefinition].