steps
step7fd41212698dee438d8f0dc8fb2b9a9e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs select: [:step | step nextLabel notNil]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'4ed05dfa-6ede-1545-957e-941970dd8869').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:35:47 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs select: [:step | step nextLabel notNil]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4ed05dfa-6ede-1545-957e-941970dd8869').
(#iconCode -> 'nil').
(#id -> #'7fd41212-698d-ee43-8d8f-0dc8fb2b9a9e').
(#isProperty -> false).
(#label -> nil).
(#next -> #'574aa5e1-9265-754a-9cdb-57e45108ee46').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:35:47 pm').
(#priority -> 2380)
}))
})