steps
step0547837e8ef9cd4b827d5574ea1e1c91
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> obj name.
	#icon -> (obj isDirectory
		ifTrue: [UiSilkIcons folderIcon]
		ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'70335831-9949-444e-8021-484a03699add').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> obj name.
	#icon -> (obj isDirectory
		ifTrue: [UiSilkIcons folderIcon]
		ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'70335831-9949-444e-8021-484a03699add').
(#iconCode -> 'nil').
(#id -> #'0547837e-8ef9-cd4b-827d-5574ea1e1c91').
(#isProperty -> true).
(#label -> nil).
(#next -> #'bda64b7c-17f6-3247-be1d-13159655ec28').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2190).
(#view -> ViTreeViewExtended)
}))
})