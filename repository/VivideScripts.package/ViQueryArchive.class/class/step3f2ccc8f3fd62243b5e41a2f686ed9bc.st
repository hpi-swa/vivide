steps
step3f2ccc8f3fd62243b5e41a2f686ed9bc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | { #text -> (method decompileWithTemps decompileString asText makeSelectorBoldIn: method methodClass) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'c98326db-10bc-5e4b-90dd-5cc33903092d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:52:06 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | { #text -> (method decompileWithTemps decompileString asText makeSelectorBoldIn: method methodClass) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c98326db-10bc-5e4b-90dd-5cc33903092d').
(#iconCode -> 'nil').
(#id -> #'3f2ccc8f-3fd6-2243-b5e4-1a2f686ed9bc').
(#isProperty -> true).
(#label -> 'Decompile w/ temps').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:52:06 am').
(#inputKind -> CompiledMethod).
(#priority -> 5830).
(#view -> ViTreeViewExtended)
}))
})