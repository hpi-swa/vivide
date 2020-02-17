steps
stepfdb69e0a57ea394aa74ab986817dca93
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {#text -> ''. #morph -> (
	Morph new
		color: (Color green paler muchDarker alpha: 0.5);
		height: 12;
		width: ((def first / def second) * 100) truncated)
"		width: (((def first log: 10) / (def second log: 10) ceiling) * 200) truncated)"}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'373bc1f9-5de5-fc4e-a4f5-40f4f88b3944').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {#text -> ''''. #morph -> (
	Morph new
		color: (Color green paler muchDarker alpha: 0.5);
		height: 12;
		width: ((def first / def second) * 100) truncated)
"		width: (((def first log: 10) / (def second log: 10) ceiling) * 200) truncated)"}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'373bc1f9-5de5-fc4e-a4f5-40f4f88b3944').
(#iconCode -> 'nil').
(#id -> #'fdb69e0a-57ea-394a-a74a-b986817dca93').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#labelColor -> '#AAAAAA').
(#priority -> 3190)
}))
})