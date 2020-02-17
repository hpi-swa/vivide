steps
step61afd65ed9435642bd3115492112b6ad
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'ca3d16ed-ddad-314b-a322-9da44f9e1ea2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:32:08 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ca3d16ed-ddad-314b-a322-9da44f9e1ea2').
(#iconCode -> 'nil').
(#id -> #'61afd65e-d943-5642-bd31-15492112b6ad').
(#isProperty -> false).
(#label -> nil).
(#next -> #'bf2d198a-d977-ed49-86f9-225cbfd68155').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:32:08 pm').
(#priority -> 4760)
}))
})