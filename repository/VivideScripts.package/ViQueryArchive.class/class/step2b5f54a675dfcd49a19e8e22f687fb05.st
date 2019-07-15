steps
step2b5f54a675dfcd49a19e8e22f687fb05
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | ViProtocol protocolsForClass: class]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9d09ac24-315c-ac4c-af8b-ca5eb7b05f23').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 October 2015 11:03:50 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | ViProtocol protocolsForClass: class]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9d09ac24-315c-ac4c-af8b-ca5eb7b05f23').
(#iconCode -> 'UiFugueIcons priceTagIcon').
(#id -> #'2b5f54a6-75df-cd49-a19e-8e22f687fb05').
(#isProperty -> false).
(#label -> 'Protocols').
(#next -> #'8bea6122-a305-b242-8d58-322fca9d39ce').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 October 2015 11:03:50 am').
(#inputKind -> ClassDescription).
(#orientation -> #default).
(#priority -> 110).
(#view -> ViTreeViewExtended)
}))
})