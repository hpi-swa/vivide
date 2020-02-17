steps
stepe689b65927f30f4a9412ab39abc2b63e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj workingCopy modified
		ifTrue: [obj packageName asText allBold]
		ifFalse: [obj packageName]).
	#icon -> (ViIconService doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5e2c8ecc-39df-6f40-9970-705f3eca0e4d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj workingCopy modified
		ifTrue: [obj packageName asText allBold]
		ifFalse: [obj packageName]).
	#icon -> (ViIconService doObject: obj)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5e2c8ecc-39df-6f40-9970-705f3eca0e4d').
(#iconCode -> 'nil').
(#id -> #'e689b659-27f3-0f4a-9412-ab39abc2b63e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0de86151-e883-cf4c-9668-960b4466822e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Name').
(#inputKind -> PackageInfo).
(#priority -> 1100)
}))
})