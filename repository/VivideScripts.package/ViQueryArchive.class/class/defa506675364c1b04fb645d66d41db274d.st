definitions
defa506675364c1b04fb645d66d41db274d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 8:38:57 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'a5066753-64c1-b04f-b645-d66d41db274d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:object | "Inspector >> toggleIndex:, selectionPrintString"
	#text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: [''<error in printString>'' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]])]'); add: (#mapType->#each); add: (#block->[:object | "Inspector >> toggleIndex:, selectionPrintString"
	#text -> (object isString
		ifTrue: [object]
		ifFalse: [[(object printStringLimitedTo: 5000) asText]
			on: Error
			do: ['<error in printString>' asText in: [:text |
				text addAttribute: TextColor red from: 1 to: text size; yourself]]])]); yourself)