tests
test08ChangeReference

	| changedObject |
	editor currentType: ((editor typeMappings
		select: [:spec | spec notNil])
		detect: [:spec | spec key == ViQueryReferenceStep]).
	editor acceptType.
	self
		deny: editor hasUnacceptedChanges;
		assert: step isReferenceStep;
		assert: step reference isNil.

	changedObject := (ViQueryStep collect: '[:obj | obj class]')
		organization: organization;
		register;
		yourself.
	self assert: step reference equals: editor currentReference.

	editor currentReference: changedObject.
	self assert: editor hasUnacceptedChanges.

	editor acceptReference.
	self deny: editor hasUnacceptedChanges.
	
	self assert: changedObject equals: step reference.