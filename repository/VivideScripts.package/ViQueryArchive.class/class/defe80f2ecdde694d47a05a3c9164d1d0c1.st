definitions
defe80f2ecdde694d47a05a3c9164d1d0c1
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e80f2ecd-de69-4d47-a05a-3c9164d1d0c1'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:ref |
	ref isSymbol
		ifFalse: [
			(1 to: ref compiledMethod numLiterals - 2)
				collect: [:i | (ref compiledMethod literalAt: i)]
				thenSelect: [:o | o isSymbol]]
		ifTrue: [SystemNavigation default allImplementorsOf: ref]]'); add: (#mapType->#each); add: (#block->[:ref |
	ref isSymbol
		ifFalse: [
			(1 to: ref compiledMethod numLiterals - 2)
				collect: [:i | (ref compiledMethod literalAt: i)]
				thenSelect: [:o | o isSymbol]]
		ifTrue: [SystemNavigation default allImplementorsOf: ref]]); yourself)