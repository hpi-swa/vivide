steps
step1bb9843febf1384882dc01ee3ed5468d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callSelf to: value]
		ifFalse: [line key hasCategory: #callSelf]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'79316033-e6c3-c840-bf52-000bdfb04da3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:57:43 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callSelf to: value]
		ifFalse: [line key hasCategory: #callSelf]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'79316033-e6c3-c840-bf52-000bdfb04da3').
(#iconCode -> 'nil').
(#id -> #'1bb9843f-ebf1-3848-82dc-01ee3ed5468d').
(#isProperty -> true).
(#label -> nil).
(#next -> #'78e13ff4-d093-1140-b575-be2225a6eaf7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:57:43 pm').
(#headerText -> 'cS').
(#priority -> 5390)
}))
})