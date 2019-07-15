steps
step05197a071395e04d90c79ba0a635f185
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | | result |
	result := OrderedCollection new.
	result addAll: package classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (package perform: check) ifTrue: [result add: script -> (package perform: script)]].
	result]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c77245e2-be55-c749-a0b3-b89f7bad59d9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:43:15 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | | result |
	result := OrderedCollection new.
	result addAll: package classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (package perform: check) ifTrue: [result add: script -> (package perform: script)]].
	result]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c77245e2-be55-c749-a0b3-b89f7bad59d9').
(#iconCode -> 'UiSilkIcons carIcon').
(#id -> #'05197a07-1395-e04d-90c7-9ba0a635f185').
(#isProperty -> false).
(#label -> 'Class hierarchy').
(#next -> #'3bc53c43-eaf3-9240-8d99-587e9a09d49c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:43:15 pm').
(#inputKind -> PackageInfo).
(#out -> Set).
(#priority -> 20).
(#view -> ViTreeViewExtended)
}))
})