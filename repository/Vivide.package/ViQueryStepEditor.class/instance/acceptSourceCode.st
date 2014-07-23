memento - data
acceptSourceCode

	self step isReferenceStep ifTrue: [^ self].
	
	self ui definitionEdit hasUnacceptedChanges
		ifTrue: [^ self ui definitionEdit acceptChanges].
	
	self acceptType.
	
	self currentDefinition
		sourceCode: self currentSourceCode;
		register.
		
	self acceptDefinition.