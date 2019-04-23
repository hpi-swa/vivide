definitions
deff05ec72394c81c4082d5f606aade5b23
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:foo | { #text -> (foo isText ifTrue: [' '] ifFalse: [foo category asText addAttribute: (TextColor color: Color gray)])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'f05ec723-94c8-1c40-82d5-f606aade5b23').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:29:06 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:foo | { #text -> (foo isText ifTrue: ['' ''] ifFalse: [foo category asText addAttribute: (TextColor color: Color gray)])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})