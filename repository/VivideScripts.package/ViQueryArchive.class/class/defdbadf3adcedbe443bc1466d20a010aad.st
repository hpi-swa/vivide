definitions
defdbadf3adcedbe443bc1466d20a010aad
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:stamp | stamp value lastStep]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'dbadf3ad-cedb-e443-bc14-66d20a010aad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 8:47:26 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:stamp | stamp value lastStep]]
		value: in) do: [:result | out addAll: result asList]]')})