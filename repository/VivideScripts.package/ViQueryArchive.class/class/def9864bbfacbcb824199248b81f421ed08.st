definitions
def9864bbfacbcb824199248b81f421ed08
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:mcp | mcp packageInfo systemCategories]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'9864bbfa-cbcb-8241-9924-8b81f421ed08').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:14:17 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:mcp | mcp packageInfo systemCategories]]
		value: in) do: [:result | out addAll: result asList]]')})