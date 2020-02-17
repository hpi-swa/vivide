steps
step6a945c46e2f2ac418b3edadc1328d8a3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
	{ #text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'2049b680-ff5b-9142-8d46-8747950a70d2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:22:13 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [''error''].
	{ #text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2049b680-ff5b-9142-8d46-8747950a70d2').
(#iconCode -> 'nil').
(#id -> #'6a945c46-e2f2-ac41-8b3e-dadc1328d8a3').
(#isProperty -> true).
(#label -> 'Pretty print').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:02:55 am').
(#inputKind -> CompiledMethod).
(#priority -> 5850).
(#view -> ViTreeViewExtended)
}))
})