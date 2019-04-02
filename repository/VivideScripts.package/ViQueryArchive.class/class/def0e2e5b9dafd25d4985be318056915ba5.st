definitions
def0e2e5b9dafd25d4985be318056915ba5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0e2e5b9d-afd2-5d49-85be-318056915ba5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:13:03 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fileEntry | [ImageReadWriter formFromFileNamed: fileEntry fullName]
	on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]')})