support
generateBlockVarDeclaration

	^ self class generateBlockVarDeclarationFor: (self inputKind collect: [:kind | kind ifNil: [Object]])