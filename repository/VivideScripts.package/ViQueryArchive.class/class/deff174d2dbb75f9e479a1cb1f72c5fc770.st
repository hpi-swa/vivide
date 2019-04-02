definitions
deff174d2dbb75f9e479a1cb1f72c5fc770
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #icon -> (def updateSetDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f174d2db-b75f-9e47-9a1c-b1f72c5fc770').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 9:08:35 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #icon -> (def updateSetDefinition
	ifNil: [UiFugueIcons crossSmallIcon]
	ifNotNil: [UiFugueIcons tickSmallIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})