definitions
defa7b9762e38a5ad4784c445ab8a195604
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | { #icon -> ((cs instVarNamed: #revertable) == true ifTrue: [UiFugueIcons arrowCurve180LeftIcon] ifFalse: [ ]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a7b9762e-38a5-ad47-84c4-45ab8a195604').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:52:37 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | { #icon -> ((cs instVarNamed: #revertable) == true ifTrue: [UiFugueIcons arrowCurve180LeftIcon] ifFalse: [ ]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})