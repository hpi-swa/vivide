steps
stepcb114238013b3e4d9bf973b27ef3dd5a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (ViObjectOriginService doObject: flag reference) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8ce4d9b2-95e4-4444-becc-3d57899b7cb8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:03:26 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (ViObjectOriginService doObject: flag reference) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8ce4d9b2-95e4-4444-becc-3d57899b7cb8').
(#iconCode -> 'nil').
(#id -> #'cb114238-013b-3e4d-9bf9-73b27ef3dd5a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'4078cbfe-867e-564c-85b0-ac2edd21217d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:03:26 pm').
(#priority -> 3380)
}))
})