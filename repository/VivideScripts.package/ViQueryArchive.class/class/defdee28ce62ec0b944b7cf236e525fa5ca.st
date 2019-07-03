definitions
defdee28ce62ec0b944b7cf236e525fa5ca
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> ' ' }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'dee28ce6-2ec0-b944-b7cf-236e525fa5ca').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 April 2019 11:11:05.98411 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> '' '' }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})