definitions
defe3fc34137646b546aaa233c636945da4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedDefinitions]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'e3fc3413-7646-b546-aaa2-33c636945da4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:11 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedDefinitions]]
		value: in) do: [:result | out addAll: result asList]]')})