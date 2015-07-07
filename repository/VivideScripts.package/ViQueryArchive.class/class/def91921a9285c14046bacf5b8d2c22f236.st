definitions
def91921a9285c14046bacf5b8d2c22f236
	<definition>

	^ ((Dictionary new) add: (#inputKind->RBAddMethodChange); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 June 2014 4:29:24 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'91921a92-85c1-4046-bacf-5b8d2c22f236'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''''].
	#text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText]'); add: (#mapType->#each); add: (#block->[:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''].
	#text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText]); yourself)