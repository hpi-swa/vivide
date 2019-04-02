definitions
def7d2c6d837fc48849b932417e83f5471a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classesAndMetaClasses asArray]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7d2c6d83-7fc4-8849-b932-417e83f5471a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:45:25 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classesAndMetaClasses asArray]]
		value: in) do: [:result | out addAll: result asList]]')})