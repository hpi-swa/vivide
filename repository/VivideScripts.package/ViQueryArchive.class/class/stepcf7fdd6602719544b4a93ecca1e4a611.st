steps
stepcf7fdd6602719544b4a93ecca1e4a611
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { 
			#text -> step viewClass name.
			#icon -> step viewClass widgetClassIcon }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'aded2941-6919-d94c-91cd-6c548f123171').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:54:01 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { 
			#text -> step viewClass name.
			#icon -> step viewClass widgetClassIcon }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'aded2941-6919-d94c-91cd-6c548f123171').
(#iconCode -> 'nil').
(#id -> #'cf7fdd66-0271-9544-b4a9-3ecca1e4a611').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:54:01 pm').
(#headerText -> 'view class').
(#priority -> 6720)
}))
})