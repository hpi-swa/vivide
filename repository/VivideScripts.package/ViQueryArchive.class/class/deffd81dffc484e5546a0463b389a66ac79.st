definitions
deffd81dffc484e5546a0463b389a66ac79
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:entries | entries select: [:entry | entry isDirectory]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'fd81dffc-484e-5546-a046-3b389a66ac79').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:entries | entries select: [:entry | entry isDirectory]] value: in)]')
})