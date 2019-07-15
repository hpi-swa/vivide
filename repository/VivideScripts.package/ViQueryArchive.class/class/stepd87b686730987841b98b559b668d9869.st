steps
stepd87b686730987841b98b559b668d9869
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls | cls theMetaClass methodDict values]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'e8bf97aa-201b-d840-99df-2ecdbe778fe9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls | cls theMetaClass methodDict values]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e8bf97aa-201b-d840-99df-2ecdbe778fe9').
(#iconCode -> 'nil').
(#id -> #'d87b6867-3098-7841-b98b-559b668d9869').
(#isProperty -> false).
(#label -> 'Methods (class-side)').
(#next -> #'92301087-4a3b-9841-bf34-cfaaef53c085').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ClassDescription).
(#priority -> 700).
(#view -> ViTreeViewExtended)
}))
})