memento - data
hasUnacceptedChanges

	^ (((((self currentLabel ~= self step label
		or: [self currentIcon ~~ self step icon])
		or: [self currentView ~~ self step viewDefinition])
		or: [self currentType ~= self currentTypeFromStep])
		or: [self step isReferenceStep not and: [self currentDefinition ~~ self step definition]])
		or: [((((self step isReferenceStep
			and: [self step isRegistered])
			and: [self step reference notNil])
			and: [self step reference isRegistered])
			and: [self currentReference ~~ self step reference])])
		or: [self step isReferenceStep not and: [self currentSourceCode ~= self step definition sourceCode]]