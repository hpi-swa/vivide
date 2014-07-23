memento - data
acceptReference

	self step isReferenceStep ifFalse: [^ self].
	
	self step reference: self currentReference.
	
	self acceptDefinition.