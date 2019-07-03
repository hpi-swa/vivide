definitions
defae2d4e1f0fff3647905c89c71c1c5b06
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString prior result |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
	prior := (class changeRecordsAt: selector) in: [:records |
		(records == nil or: [records size <= 1])
			ifTrue: [nil]
			ifFalse: [(records at: 2) string]].
	sourceString := class prettyPrinterClass format: sourceString in: class notifying: nil.
	
	{ #text -> (prior ifNil: [sourceString] ifNotNil: [
			TextDiffBuilder
				buildDisplayPatchFrom: prior
				to: sourceString
				inClass: class
				prettyDiffs: true]) asText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ae2d4e1f-0fff-3647-905c-89c71c1c5b06').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:02:55 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString prior result |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [''error''].
	prior := (class changeRecordsAt: selector) in: [:records |
		(records == nil or: [records size <= 1])
			ifTrue: [nil]
			ifFalse: [(records at: 2) string]].
	sourceString := class prettyPrinterClass format: sourceString in: class notifying: nil.
	
	{ #text -> (prior ifNil: [sourceString] ifNotNil: [
			TextDiffBuilder
				buildDisplayPatchFrom: prior
				to: sourceString
				inClass: class
				prettyDiffs: true]) asText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})