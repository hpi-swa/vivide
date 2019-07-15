steps
step93b6233ea34ef54d9c6ab7eeef30e075
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0ccd9b03-06d6-4442-8f39-b1e25dcedbd0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:56:20 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0ccd9b03-06d6-4442-8f39-b1e25dcedbd0').
(#iconCode -> 'nil').
(#id -> #'93b6233e-a34e-f54d-9c6a-b7eeef30e075').
(#isProperty -> true).
(#label -> nil).
(#next -> #'fb5f9d48-49cf-774c-921f-e9598b74d2c7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 4320)
}))
})