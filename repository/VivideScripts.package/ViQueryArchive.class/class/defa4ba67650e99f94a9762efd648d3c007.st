definitions
defa4ba67650e99f94a9762efd648d3c007
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { obj isVariableBinding ifFalse: [#()] ifTrue: [
	{#icon -> UiFugueIcons tagSmallIcon. #balloonText -> 'Binding'}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a4ba6765-0e99-f94a-9762-efd648d3c007').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:22:27 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { obj isVariableBinding ifFalse: [#()] ifTrue: [
	{#icon -> UiFugueIcons tagSmallIcon. #balloonText -> ''Binding''}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})