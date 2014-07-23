as yet unclassified
test24CloneDefinitionAfterTypeChange

	step := ViQueryStep property: '[:obj | obj asString]'.
	definition := step definition.
	
	step organization: organization.
	definition organization: organization.
	
	editor object: step.
	
	"-----------------------------------"
	
	self assert: ViQueryPropertyStep equals: editor currentType key.
	editor currentType: editor typeMappings second.
	self assert: editor hasUnacceptedChanges.
	self assert: editor typeMappings second equals: editor currentType.
	editor useNewCode.
	self assert: editor typeMappings second equals: editor currentType.
	self assert: editor hasUnacceptedChanges.