steps
step1573b08cd3a1fb43a0304ccb7ad458ac
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:hub | hub projects collect: [:nm | hub project: nm] thenSelect: [:p | p ~~ #notFound]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'36b97ef1-eff0-cc47-bdb7-5231dcaf0940').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:54:28 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:hub | hub projects collect: [:nm | hub project: nm] thenSelect: [:p | p ~~ #notFound]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'36b97ef1-eff0-cc47-bdb7-5231dcaf0940').
(#iconCode -> 'nil').
(#id -> #'1573b08c-d3a1-fb43-a030-4ccb7ad458ac').
(#isProperty -> false).
(#label -> 'Projects').
(#next -> #'7665bebe-0cf4-2543-9977-ca902db88134').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ViSmalltalkHub).
(#priority -> 560).
(#view -> ViTreeViewExtended)
}))
})