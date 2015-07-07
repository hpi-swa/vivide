definitions
defeb0e653806ebe34e8e208914317b1981
	<definition>

	^ ((Dictionary new) add: (#inputKind->RBProgramNode); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'eb0e6538-06eb-e34e-8e20-8914317b1981'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:node | {
	#text -> (true caseOf: {
		[node isMessage] -> [node selector].
	} otherwise: ['''']).
	#icon -> (true caseOf: {
		[node isMessage] -> [UiDiagonaIcons icon0127Small].
		[node isReturn] -> [UiDiagonaIcons icon0316Small].
		} otherwise: [ViIcons blankIcon])}]'); add: (#mapType->#each); add: (#block->[:node | {
	#text -> (true caseOf: {
		[node isMessage] -> [node selector].
	} otherwise: ['']).
	#icon -> (true caseOf: {
		[node isMessage] -> [UiDiagonaIcons icon0127Small].
		[node isReturn] -> [UiDiagonaIcons icon0316Small].
		} otherwise: [ViIcons blankIcon])}]); yourself)