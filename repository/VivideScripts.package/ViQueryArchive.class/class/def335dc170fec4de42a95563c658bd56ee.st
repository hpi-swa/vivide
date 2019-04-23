definitions
def335dc170fec4de42a95563c658bd56ee
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'335dc170-fec4-de42-a955-63c658bd56ee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})