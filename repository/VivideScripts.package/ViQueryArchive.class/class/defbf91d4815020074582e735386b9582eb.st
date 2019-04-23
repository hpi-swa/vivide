definitions
defbf91d4815020074582e735386b9582eb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:viQueryStepDefinition | ViProfile active organization orderedSteps detect: [:ea | ea definition == viQueryStepDefinition ]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'bf91d481-5020-0745-82e7-35386b9582eb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:02:07 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:viQueryStepDefinition | ViProfile active organization orderedSteps detect: [:ea | ea definition == viQueryStepDefinition ]]]
		value: in) do: [:result | out addAll: result asList]]')})