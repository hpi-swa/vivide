as yet unclassified
updateForDefinition: aQueryStepDefinition

	aQueryStepDefinition ifNil: [^ self].

	aQueryStepDefinition isMapDefinition
		ifTrue: [
			self
				inputKind: aQueryStepDefinition inputKind;
				outputKind: aQueryStepDefinition outputKind]
		ifFalse: [self inputKind: nil; outputKind: nil].

	self
		id: aQueryStepDefinition id;
		theText: aQueryStepDefinition sourceCode.
		
	self
		updateButton: sendersBtn
		label: (aQueryStepDefinition organization referencesToDefinition: aQueryStepDefinition) size asString.