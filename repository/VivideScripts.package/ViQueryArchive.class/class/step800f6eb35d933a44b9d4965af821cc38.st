steps
step800f6eb35d933a44b9d4965af821cc38
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#icon -> ((obj at: #projectDescription) ifEmpty: [ViIcons blankIcon] ifNotEmpty: [UiSilkIcons commentIcon]). #balloonText -> (obj at: #projectDescription). #text -> (obj at: #path)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'d29a5c0a-426e-9347-9436-95c9da32e38c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:15:04 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#icon -> ((obj at: #projectDescription) ifEmpty: [ViIcons blankIcon] ifNotEmpty: [UiSilkIcons commentIcon]). #balloonText -> (obj at: #projectDescription). #text -> (obj at: #path)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d29a5c0a-426e-9347-9436-95c9da32e38c').
(#iconCode -> 'nil').
(#id -> #'800f6eb3-5d93-3a44-b9d4-965af821cc38').
(#isProperty -> true).
(#label -> nil).
(#next -> #'a36810b7-a281-b34d-9d22-e1f1a585db30').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:15:04 pm').
(#priority -> 4120)
}))
})