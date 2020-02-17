steps
stepb1afac3a000085449dceebfda96b30b6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4f149274-963d-d444-9099-9837864a8409').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:35:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4f149274-963d-d444-9099-9837864a8409').
(#iconCode -> 'nil').
(#id -> #'b1afac3a-0000-8544-9dce-ebfda96b30b6').
(#isProperty -> false).
(#label -> 'DBLP Result').
(#next -> #'cf42cf45-c23c-c149-81f2-1b262f58b7d3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#priority -> 6280).
(#view -> ViTreeViewExtended)
}))
})