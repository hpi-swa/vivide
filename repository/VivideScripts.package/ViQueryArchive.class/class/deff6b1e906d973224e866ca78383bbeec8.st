definitions
deff6b1e906d973224e866ca78383bbeec8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #icon -> (def updateClearDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f6b1e906-d973-224e-866c-a78383bbeec8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 9:10:21 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #icon -> (def updateClearDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})