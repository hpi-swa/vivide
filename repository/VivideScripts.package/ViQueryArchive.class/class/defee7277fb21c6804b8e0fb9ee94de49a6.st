definitions
defee7277fb21c6804b8e0fb9ee94de49a6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object isText ifTrue: [] ifFalse: [object] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'ee7277fb-21c6-804b-8e0f-b9ee94de49a6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:19:13 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object isText ifTrue: [] ifFalse: [object] ]]
		value: in) do: [:result | out addAll: result asList]]')})