definitions
defb20e028e3d01a342b258dedd27d970e2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''].
	{ #text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'b20e028e-3d01-a342-b258-dedd27d970e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 4:29:24 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''''].
	{ #text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})