steps
stepimplementors
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'43a540d6-480d-1243-9f91-69cbaedd58ab').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'43a540d6-480d-1243-9f91-69cbaedd58ab').
(#iconCode -> 'UiFugueIcons scriptsTextIcon').
(#id -> #implementors).
(#isProperty -> false).
(#label -> 'Implementors').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#messageSet)).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm').
(#inputKind -> ByteSymbol).
(#out -> Set).
(#priority -> 200).
(#view -> ViTreeViewExtended)
}))
})