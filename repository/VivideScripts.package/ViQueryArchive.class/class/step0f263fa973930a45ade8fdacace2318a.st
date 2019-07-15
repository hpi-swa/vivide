steps
step0f263fa973930a45ade8fdacace2318a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:stamp | 
	{ #text -> (stamp value lastStep ifNil: ['NO STEP'] ifNotNil: [:step | step definition
		ifNil: ['FILL STEP']
		ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'78ad143c-a506-de4f-b4ab-dc169e051970').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:52:02 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:stamp | 
	{ #text -> (stamp value lastStep ifNil: [''NO STEP''] ifNotNil: [:step | step definition
		ifNil: [''FILL STEP'']
		ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'78ad143c-a506-de4f-b4ab-dc169e051970').
(#iconCode -> 'nil').
(#id -> #'0f263fa9-7393-0a45-ade8-fdacace2318a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'d50e64dd-2c00-694f-9ed1-a81ee1b01b81').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 4310)
}))
})