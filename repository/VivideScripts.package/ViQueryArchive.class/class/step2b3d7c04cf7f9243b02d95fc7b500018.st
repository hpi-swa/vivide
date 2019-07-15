steps
step2b3d7c04cf7f9243b02d95fc7b500018
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#icon -> (((ViIconService doObject: obj) clippedToSize: 32@32) scaledToSize: 64@64).
	#balloonText -> obj selector}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'c77d458f-dff9-3340-8ccb-be0213da1d61').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#icon -> (((ViIconService doObject: obj) clippedToSize: 32@32) scaledToSize: 64@64).
	#balloonText -> obj selector}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c77d458f-dff9-3340-8ccb-be0213da1d61').
(#iconCode -> 'nil').
(#id -> #'2b3d7c04-cf7f-9243-b02d-95fc7b500018').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Methods').
(#priority -> 1330)
}))
})