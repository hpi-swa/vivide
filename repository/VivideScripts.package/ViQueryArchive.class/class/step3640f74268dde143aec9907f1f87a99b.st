steps
step3640f74268dde143aec9907f1f87a99b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelServiceForEclipse doObject: obj).
	#icon -> (ViIconServiceForEclipse doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'dffcbe1e-fde0-e744-98be-1ebad0ddc29f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:34:54 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelServiceForEclipse doObject: obj).
	#icon -> (ViIconServiceForEclipse doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dffcbe1e-fde0-e744-98be-1ebad0ddc29f').
(#iconCode -> 'nil').
(#id -> #'3640f742-68dd-e143-aec9-907f1f87a99b').
(#isProperty -> true).
(#label -> nil).
(#next -> #'40361e30-0f77-964f-b3b5-a7fb7cc955d9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:15:17 pm').
(#priority -> 3810)
}))
})