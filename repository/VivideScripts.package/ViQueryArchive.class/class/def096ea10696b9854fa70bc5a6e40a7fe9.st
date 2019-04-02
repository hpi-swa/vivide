definitions
def096ea10696b9854fa70bc5a6e40a7fe9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:hub | hub users collect: [:username | hub user: username]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'096ea106-96b9-854f-a70b-c5a6e40a7fe9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 5:31:55 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:hub | hub users collect: [:username | hub user: username]]]
		value: in) do: [:result | out addAll: result asList]]')})