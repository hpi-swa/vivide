steps
stepcef85ed71b68134694b45415df6e3544
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:mailboxes | mailboxes sorted: [:a :b | a name <= b name]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'fd1dbe4a-b647-5c47-9eee-f7ed7aaf12e1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2020 2:55:15.220446 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:mailboxes | mailboxes sorted: [:a :b | a name <= b name]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fd1dbe4a-b647-5c47-9eee-f7ed7aaf12e1').
(#iconCode -> 'nil').
(#id -> #'cef85ed7-1b68-1346-94b4-5415df6e3544').
(#isProperty -> false).
(#label -> 'My Mailboxes').
(#next -> #'42463360-b371-7a4b-aef3-d75fa19c6da9').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2020 2:55:15.219446 pm').
(#windowTitle -> #simple)
}))
})