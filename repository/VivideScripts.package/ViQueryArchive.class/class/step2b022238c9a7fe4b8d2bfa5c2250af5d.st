steps
step2b022238c9a7fe4b8d2bfa5c2250af5d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:object | "Inspector >> toggleIndex:, selectionPrintString"
	{ #text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: ['<error in printString>' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'309e810f-480b-8043-b11c-4ceda2e44032').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:57 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:object | "Inspector >> toggleIndex:, selectionPrintString"
	{ #text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: [''<error in printString>'' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'309e810f-480b-8043-b11c-4ceda2e44032').
(#iconCode -> 'nil').
(#id -> #'2b022238-c9a7-fe4b-8d2b-fa5c2250af5d').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:57 am').
(#priority -> 5520).
(#view -> #text)
}))
})