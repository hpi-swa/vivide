meta-scripts
metaReference: script

	| newCode pos |
	self assert: self isMeta.

	script isDefault ifFalse: [
		script adoptOrganization: self organization].
	
	newCode := self sourceCode copyFrom: 1 to: (pos := (self sourceCode indexOfSubCollection: '#current -> #')+11).
	newCode := newCode, script id storeString.
	newCode := newCode, '.', (self sourceCode copyFrom: (self sourceCode indexOf: Character cr startingAt: pos) to: self sourceCode size).

	self sourceCode: newCode.