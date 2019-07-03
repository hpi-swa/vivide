definitions
def725b8468cb5c0641bbb5c3b42a45caae
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:assoc | (assoc value listAtCategoryNamed: assoc key)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'725b8468-cb5c-0641-bbb5-c3b42a45caae').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:26:16 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:assoc | (assoc value listAtCategoryNamed: assoc key)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]')
})