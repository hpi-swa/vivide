definitions
defe80f2ecdde694d47a05a3c9164d1d0c1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref |
	ref isSymbol
		ifFalse: [
			(1 to: ref compiledMethod numLiterals - 2)
				collect: [:i | (ref compiledMethod literalAt: i)]
				thenSelect: [:o | o isSymbol]]
		ifTrue: [SystemNavigation default allImplementorsOf: ref]]).
(#class -> ViQueryMapDefinition).
(#id -> #'e80f2ecd-de69-4d47-a05a-3c9164d1d0c1').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:ref |
	ref isSymbol
		ifFalse: [
			(1 to: ref compiledMethod numLiterals - 2)
				collect: [:i | (ref compiledMethod literalAt: i)]
				thenSelect: [:o | o isSymbol]]
		ifTrue: [SystemNavigation default allImplementorsOf: ref]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})