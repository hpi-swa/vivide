steps
stepab419a226d349c4f894704384cebd943
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:viQueryStep | 
	| current refs |
	current := nil. 
	refs := viQueryStep references.
	
	[refs isEmpty] whileFalse: [
		current := refs first.
		refs := current references.
	].
	current
	 ]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'ed1a253a-ff93-ff46-839e-0b9fe0538bc0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:04:11 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:viQueryStep | 
	| current refs |
	current := nil. 
	refs := viQueryStep references.
	
	[refs isEmpty] whileFalse: [
		current := refs first.
		refs := current references.
	].
	current
	 ]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ed1a253a-ff93-ff46-839e-0b9fe0538bc0').
(#iconCode -> 'nil').
(#id -> #'ab419a22-6d34-9c4f-8947-04384cebd943').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:04:11 pm')
}))
})