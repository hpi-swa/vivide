steps
steptranscript
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [VivideLight historyFor: #transcript] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2c1bdde5-03ff-4341-8de6-d518dbf88ba7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')
})).
(#sourceCode -> '[:in :out | [VivideLight historyFor: #transcript] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2c1bdde5-03ff-4341-8de6-d518dbf88ba7').
(#iconCode -> 'ViIcons icons8BulletedList64px2Icon').
(#id -> #transcript).
(#isProperty -> false).
(#label -> 'Transcript').
(#next -> #'c71cedcd-3e52-a742-8417-e71572b1560e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm').
(#isGlobal -> true).
(#notifier -> [ViObjectHistoryNotifier new
		history: (VivideLight historyFor: #transcript)]).
(#priority -> 500).
(#scrollToBottom -> true).
(#view -> ViTextView)
}))
})