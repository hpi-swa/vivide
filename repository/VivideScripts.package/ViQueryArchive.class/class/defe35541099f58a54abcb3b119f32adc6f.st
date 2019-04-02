definitions
defe35541099f58a54abcb3b119f32adc6f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:wnd | { #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: ['-'] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'e3554109-9f58-a54a-bcb3-b119f32adc6f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 July 2014 2:15:45 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:wnd | { #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: [''-''] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})