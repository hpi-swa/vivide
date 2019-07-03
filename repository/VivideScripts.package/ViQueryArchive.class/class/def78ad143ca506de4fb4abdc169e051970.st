definitions
def78ad143ca506de4fb4abdc169e051970
	<definition>

	^ (Dictionary newFrom: {
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
})