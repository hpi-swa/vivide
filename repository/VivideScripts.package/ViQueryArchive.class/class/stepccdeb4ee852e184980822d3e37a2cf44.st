steps
stepccdeb4ee852e184980822d3e37a2cf44
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:project | { #text -> (project currentVersion
	ifNil: ['-']
	ifNotNil: [:v | v timestamp]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6d9fcc47-72b3-d941-9e2c-f5723304dcea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:project | { #text -> (project currentVersion
	ifNil: [''-'']
	ifNotNil: [:v | v timestamp]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6d9fcc47-72b3-d941-9e2c-f5723304dcea').
(#iconCode -> 'nil').
(#id -> #'ccdeb4ee-852e-1849-8082-2d3e37a2cf44').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Timestamp').
(#labelColor -> '#AAAAAA').
(#priority -> 2930)
}))
})