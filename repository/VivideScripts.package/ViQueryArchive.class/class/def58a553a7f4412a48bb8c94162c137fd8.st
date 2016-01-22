definitions
def58a553a7f4412a48bb8c94162c137fd8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
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
				prettyDiffs: true]) asText]).
(#class -> ViQueryMapDefinition).
(#id -> #'58a553a7-f441-2a48-bb8c-94162c137fd8').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:02:55 am')})).
(#sourceCode -> '[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
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
				prettyDiffs: true]) asText]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})