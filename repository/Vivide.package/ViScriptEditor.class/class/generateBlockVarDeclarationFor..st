as yet unclassified
generateBlockVarDeclarationFor: someClasses

	| classCount |
	classCount := Dictionary new.
	
	^ someClasses
		inject: '' into: [:pattern :cls |
			| count |
			count := classCount at: cls put: (classCount at: cls ifAbsent: [0]) + 1.
			pattern := pattern, ':', 
				((cls name findTokens: ' ') reduce: [:a :b | a, b withFirstCharacterUppercase]) withFirstCharacterDownshifted,
				(count > 1 ifFalse: [''] ifTrue: [count asString]),
				' ']