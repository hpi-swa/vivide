definitions
defeb571ae75c708146bc633c95f8732935
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail date relativePrintString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'eb571ae7-5c70-8146-bc63-3c95f8732935').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:22:10 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail date relativePrintString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})