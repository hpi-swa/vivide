definitions
def91921a9285c14046bacf5b8d2c22f236
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''].
	#text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText]).
(#class -> ViQueryMapDefinition).
(#id -> #'91921a92-85c1-4046-bacf-5b8d2c22f236').
(#inputKind -> RBAddMethodChange).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 4:29:24 pm')})).
(#sourceCode -> '[:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''''].
	#text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})