steps
step22b325c1285b62428b45bf948f7079a2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViObjectOriginService doObject: obj reference)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'82e3a88d-dd39-da49-a629-fc0c17c469e1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViObjectOriginService doObject: obj reference)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'82e3a88d-dd39-da49-a629-fc0c17c469e1').
(#iconCode -> 'nil').
(#id -> #'22b325c1-285b-6242-8b45-bf948f7079a2').
(#isProperty -> true).
(#label -> nil).
(#next -> #'d977be3c-9e8a-6740-bff7-63c0bd8811c0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Origin').
(#labelColor -> '#AAAAAA').
(#priority -> 2020)
}))
})