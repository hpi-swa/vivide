steps
stepef81aed0ae2d6548904f030b28e12e97
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj | obj isBehavior ifTrue: [obj subclasses] ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'536bbdfd-5139-cf4a-8218-20cf3e241095').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:05:18 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj | obj isBehavior ifTrue: [obj subclasses] ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'536bbdfd-5139-cf4a-8218-20cf3e241095').
(#iconCode -> 'nil').
(#id -> #'ef81aed0-ae2d-6548-904f-030b28e12e97').
(#isProperty -> false).
(#label -> nil).
(#next -> #'cc0ed406-f999-fe49-b8f7-f627deb6cb53').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:05:18 pm').
(#priority -> 3800)
}))
})