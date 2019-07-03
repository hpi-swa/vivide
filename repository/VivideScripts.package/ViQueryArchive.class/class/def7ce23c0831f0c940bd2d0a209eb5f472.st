definitions
def7ce23c0831f0c940bd2d0a209eb5f472
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:category | SystemOrganization listAtCategoryNamed: category]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7ce23c08-31f0-c940-bd2d-0a209eb5f472').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:52:58 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:category | SystemOrganization listAtCategoryNamed: category]]
		value: in) do: [:result | out addAll: result asList]]')
})