as yet unclassified
linesOfCodeForSourceCode: source do: block

	| inComment lineCount |
	lineCount := 0.
	inComment := false.
	
	source lineIndicesDo: [:start :endWithoutDelimiters :end |
		| realCode |
		realCode := false.
		start to: endWithoutDelimiters do: [:index | | char |
			char := source at: index.
			char = $"
				ifTrue: [inComment := inComment not]
				ifFalse: [	realCode := realCode
					or: [char isSeparator not and: [inComment not]]]].
		
		realCode
			ifTrue: [block value: source value: start value: endWithoutDelimiters]].