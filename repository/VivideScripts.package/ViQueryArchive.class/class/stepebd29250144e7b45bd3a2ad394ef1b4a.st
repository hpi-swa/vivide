steps
stepebd29250144e7b45bd3a2ad394ef1b4a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object isBehavior ifTrue: [object] ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4edf993e-53de-4942-aaa2-45bbb7e72321').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:48:49 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object isBehavior ifTrue: [object] ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4edf993e-53de-4942-aaa2-45bbb7e72321').
(#iconCode -> 'nil').
(#id -> #'ebd29250-144e-7b45-bd3a-2ad394ef1b4a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8451e0da-6c99-7f41-9483-316176f07642').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:48:49 pm')
}))
})