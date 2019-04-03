definitions
def8d6b91cd0f953d4582a3fae03ea9d080
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | {
	class category.
	class
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'8d6b91cd-0f95-3d45-82a3-fae03ea9d080').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 April 2019 8:58:46.315845 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | {
	class category.
	class
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})