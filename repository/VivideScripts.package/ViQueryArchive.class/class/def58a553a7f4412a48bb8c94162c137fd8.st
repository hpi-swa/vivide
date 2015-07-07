definitions
def58a553a7f4412a48bb8c94162c137fd8
	<definition>

	^ ((Dictionary new) add: (#inputKind->CompiledMethod); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'24 February 2014 11:02:55 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'58a553a7-f441-2a48-bb8c-94162c137fd8'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString prior result |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [''error''].
	prior := (class changeRecordsAt: selector) in: [:records |
		(records == nil or: [records size <= 1])
			ifTrue: [nil]
			ifFalse: [(records at: 2) string]].
	sourceString := class prettyPrinterClass format: sourceString in: class notifying: nil.
	
	#text -> (prior ifNil: [sourceString] ifNotNil: [
			TextDiffBuilder
				buildDisplayPatchFrom: prior
				to: sourceString
				inClass: class
				prettyDiffs: true]) asText]'); add: (#mapType->#each); add: (#block->[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString prior result |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
	prior := (class changeRecordsAt: selector) in: [:records |
		(records == nil or: [records size <= 1])
			ifTrue: [nil]
			ifFalse: [(records at: 2) string]].
	sourceString := class prettyPrinterClass format: sourceString in: class notifying: nil.
	
	#text -> (prior ifNil: [sourceString] ifNotNil: [
			TextDiffBuilder
				buildDisplayPatchFrom: prior
				to: sourceString
				inClass: class
				prettyDiffs: true]) asText]); yourself)