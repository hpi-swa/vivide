steps
stepc4cd5013fa6d7a44966e79cfcaa59612
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
		ifTrue: [ { #text -> textOrObject } ]
		ifFalse: [ [:step | { #text -> (step steps collect: [:s | s category ifNil: #default]) asSet asArray asString }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'05921657-1e65-7947-aac4-65dcf139a621').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 December 2013 11:55:55 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
		ifTrue: [ { #text -> textOrObject } ]
		ifFalse: [ [:step | { #text -> (step steps collect: [:s | s category ifNil: #default]) asSet asArray asString }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'05921657-1e65-7947-aac4-65dcf139a621').
(#iconCode -> 'nil').
(#id -> #'c4cd5013-fa6d-7a44-966e-79cfcaa59612').
(#isProperty -> true).
(#label -> nil).
(#next -> #'1ab8a66a-db32-f445-87b2-0c2967596906').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 December 2013 11:55:55 am').
(#headerText -> 'Category (step)').
(#priority -> 4580)
}))
})