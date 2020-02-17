steps
step989369d4032d1d49adaeb70b2f36ea1e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'ae2d4e1f-0fff-3647-905c-89c71c1c5b06').
(#iconCode -> 'nil').
(#id -> #'989369d4-032d-1d49-adae-b70b2f36ea1e').
(#isProperty -> true).
(#label -> 'Diff w/ pretty print').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:02:55 am').
(#inputKind -> CompiledMethod).
(#priority -> 5880).
(#view -> ViTreeViewExtended)
}))
})