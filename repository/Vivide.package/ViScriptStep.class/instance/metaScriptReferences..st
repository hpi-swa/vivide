meta-scripts
metaScriptReferences: someScripts

	| newCode pos |
	self assert: self isMeta.

	someScripts
		select: [:script | script isDefault not]
		thenDo: [:script | script adoptOrganization: self organization].
	
	newCode := self sourceCode copyFrom: 1 to: (pos := (self sourceCode indexOfSubCollection: '#scripts -> #')+11).
	newCode := newCode, (someScripts collect: [:script | script id]) storeString.
	newCode := newCode, '.', (self sourceCode copyFrom: (self sourceCode indexOf: Character cr startingAt: pos) to: self sourceCode size).

	self sourceCode: newCode.