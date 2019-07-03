definitions
def309e810f480b8043b11c4ceda2e44032
	<definition>

	^ (Dictionary newFrom: {
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
})