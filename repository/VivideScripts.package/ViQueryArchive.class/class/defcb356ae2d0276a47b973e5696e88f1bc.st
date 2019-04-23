definitions
defcb356ae2d0276a47b973e5696e88f1bc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:obj | {#text -> obj printString}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'cb356ae2-d027-6a47-b973-e5696e88f1bc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 December 2014 2:57:53 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:obj | {#text -> obj printString}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})