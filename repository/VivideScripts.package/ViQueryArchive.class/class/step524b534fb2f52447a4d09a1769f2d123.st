steps
step524b534fb2f52447a4d09a1769f2d123
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'33f79563-33a3-b54e-a04f-9c5b2f0b4b87').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 August 2014 1:19:01 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'33f79563-33a3-b54e-a04f-9c5b2f0b4b87').
(#iconCode -> 'nil').
(#id -> #'524b534f-b2f5-2447-a4d0-9a1769f2d123').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 August 2014 1:19:01 pm').
(#inputKind -> ClassDescription).
(#priority -> 6750)
}))
})