steps
stepc0319874c45b744185fef6fe2ba7e2a9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:entries | entries select: [:entry | entry isDirectory]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'fd81dffc-484e-5546-a046-3b389a66ac79').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:entries | entries select: [:entry | entry isDirectory]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fd81dffc-484e-5546-a046-3b389a66ac79').
(#iconCode -> 'nil').
(#id -> #'c0319874-c45b-7441-85fe-f6fe2ba7e2a9').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ce6fede4-1334-d84b-8176-5e5a33fd162f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> DirectoryEntry).
(#outputKind -> DirectoryEntryDirectory).
(#priority -> 2170).
(#view -> ViTreeViewExtended)
}))
})