steps
step0de86151e883cf4c9668960b4466822e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'c0a1ff16-749f-2148-8773-4dcbcead01b3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c0a1ff16-749f-2148-8773-4dcbcead01b3').
(#iconCode -> 'nil').
(#id -> #'0de86151-e883-cf4c-9668-960b4466822e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'d30b0a27-e492-ab4c-807d-23bd5f7ccf4b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Version').
(#inputKind -> PackageInfo).
(#labelColor -> '#AAAAAA').
(#priority -> 1110).
(#resizeMode -> #rigid)
}))
})