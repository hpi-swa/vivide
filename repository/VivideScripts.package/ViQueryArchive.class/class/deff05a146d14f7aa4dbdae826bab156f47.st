definitions
deff05a146d14f7aa4dbdae826bab156f47
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object category])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'f05a146d-14f7-aa4d-bdae-826bab156f47').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object category])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})