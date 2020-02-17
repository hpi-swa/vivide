templates - support
generateBlockVarDeclarationFor: someClassesOrNils

	| classCount someClasses |
	classCount := Dictionary new.
	someClasses := someClassesOrNils collect: [:cls | cls ifNil: [Object]].
	
	^ String streamContents: [:pattern |
		someClasses do: [:cls |
			| count |
			count := classCount at: cls put: (classCount at: cls ifAbsent: [0]) + 1.
			pattern
				nextPutAll: ':';
				nextPutAll: ((cls name findTokens: ' ') reduce: [:a :b | a, b withFirstCharacterUppercase]) withFirstCharacterDownshifted;
				nextPutAll: (count > 1 ifFalse: [''] ifTrue: [count asString]);
				space]]