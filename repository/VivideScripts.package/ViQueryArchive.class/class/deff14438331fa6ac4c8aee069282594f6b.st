definitions
deff14438331fa6ac4c8aee069282594f6b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph vResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'f1443833-1fa6-ac4c-8aee-069282594f6b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph vResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})