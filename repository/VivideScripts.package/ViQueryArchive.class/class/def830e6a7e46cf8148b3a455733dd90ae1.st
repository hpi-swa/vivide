definitions
def830e6a7e46cf8148b3a455733dd90ae1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'830e6a7e-46cf-8148-b3a4-55733dd90ae1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:26:55 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedSteps]]
		value: in) do: [:result | out addAll: result asList]]')})