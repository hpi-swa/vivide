steps
step86247f765b43d74882a2b2d9e56e443a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconService doObject: flag reference). 
	#text -> (ViLabelService doObject: flag reference)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8f1e5aa0-108a-b94a-a206-6eabb7545d04').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:01:48 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | {
	#icon -> (ViIconService doObject: flag reference). 
	#text -> (ViLabelService doObject: flag reference)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8f1e5aa0-108a-b94a-a206-6eabb7545d04').
(#iconCode -> 'nil').
(#id -> #'86247f76-5b43-d748-82a2-b2d9e56e443a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'cb114238-013b-3e4d-9bf9-73b27ef3dd5a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:01:48 pm').
(#priority -> 3370)
}))
})