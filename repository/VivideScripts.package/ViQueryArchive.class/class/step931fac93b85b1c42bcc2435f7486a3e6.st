steps
step931fac93b85b1c42bcc2435f7486a3e6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:stamp | { #text -> ('<font color="#AAAAAA">{1}</font><br>{2}' format: {
	ViToolSet printRelativeTimeStamp: stamp key.
	(stamp value description withNoLineLongerThan: 35) escapeHtmlText}) asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'64943375-22d7-314f-9d38-5be28169ee58').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:58:02 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:stamp | { #text -> (''<font color="#AAAAAA">{1}</font><br>{2}'' format: {
	ViToolSet printRelativeTimeStamp: stamp key.
	(stamp value description withNoLineLongerThan: 35) escapeHtmlText}) asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'64943375-22d7-314f-9d38-5be28169ee58').
(#iconCode -> 'nil').
(#id -> #'931fac93-b85b-1c42-bcc2-435f7486a3e6').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0f263fa9-7393-0a45-ade8-fdacace2318a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:58:02 pm').
(#priority -> 4300)
}))
})