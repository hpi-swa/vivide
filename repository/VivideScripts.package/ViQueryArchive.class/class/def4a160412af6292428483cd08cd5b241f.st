definitions
def4a160412af6292428483cd08cd5b241f
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
(#class -> ViScriptDefinition).
(#id -> #'4a160412-af62-9242-8483-cd08cd5b241f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:57 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:object | "Inspector >> toggleIndex:, selectionPrintString"
	{ #text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: [''<error in printString>'' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})