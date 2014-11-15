initializing
parseChunk: aString

	| tokens |
	tokens := Scanner new scanTokens: aString.
	classSymbol := tokens first.
	(tokens second = #class or: [tokens second = #classTrait])
		ifTrue: [
			classIsMeta := true.
			category := tokens fourth.
			stamp := tokens sixth]
		ifFalse: [
			classIsMeta := false.
			category := tokens third.
			tokens size > 3 ifTrue: [stamp := tokens fifth]].
	tokens size > 6 ifTrue: [prior := tokens last].