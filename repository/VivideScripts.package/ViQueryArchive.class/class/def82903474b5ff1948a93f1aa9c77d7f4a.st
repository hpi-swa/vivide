definitions
def82903474b5ff1948a93f1aa9c77d7f4a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:change | change changes "composition"
	copyWithout: change]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'82903474-b5ff-1948-a93f-1aa9c77d7f4a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 5:22:34 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:change | change changes "composition"
	copyWithout: change]]
		value: in) do: [:result | out addAll: result asList]]')})