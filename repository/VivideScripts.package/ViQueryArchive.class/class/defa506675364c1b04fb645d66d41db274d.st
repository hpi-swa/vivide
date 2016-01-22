definitions
defa506675364c1b04fb645d66d41db274d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:object | "Inspector >> toggleIndex:, selectionPrintString"
	#text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: ['<error in printString>' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]])]).
(#class -> ViQueryMapDefinition).
(#id -> #'a5066753-64c1-b04f-b645-d66d41db274d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:57 am')})).
(#sourceCode -> '[:object | "Inspector >> toggleIndex:, selectionPrintString"
	#text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: [''<error in printString>'' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})