steps
stepc9208feb9579b54e83a343ffb87e69fa
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
(#className -> #ViScriptDefinition).
(#id -> #'b20e028e-3d01-a342-b258-dedd27d970e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 4:29:24 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | | prior |
	prior := change changeClass sourceCodeAt: change selector ifAbsent: [''''].
	{ #text -> (TextDiffBuilder
		buildDisplayPatchFrom: prior
		to: change source
		inClass: change changeClass
		prettyDiffs: false) asText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b20e028e-3d01-a342-b258-dedd27d970e2').
(#iconCode -> 'nil').
(#id -> #'c9208feb-9579-b54e-83a3-43ffb87e69fa').
(#isProperty -> true).
(#label -> 'Diff').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> RBAddMethodChange).
(#priority -> 6260).
(#view -> ViTreeViewExtended)
}))
})