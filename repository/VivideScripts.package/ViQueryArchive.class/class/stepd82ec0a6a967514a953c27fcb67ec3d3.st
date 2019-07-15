steps
stepd82ec0a6a967514a953c27fcb67ec3d3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj |
	{#text -> (ViLabelService doObject: obj third).
	#color -> ((obj third isBehavior and: [obj third inheritsFrom: Collection])
		ifTrue: [Color yellow]
		ifFalse: ["transparent"])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f8634096-d458-3544-a4e1-2326cba8bd5b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj |
	{#text -> (ViLabelService doObject: obj third).
	#color -> ((obj third isBehavior and: [obj third inheritsFrom: Collection])
		ifTrue: [Color yellow]
		ifFalse: ["transparent"])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f8634096-d458-3544-a4e1-2326cba8bd5b').
(#iconCode -> 'nil').
(#id -> #'d82ec0a6-a967-514a-953c-27fcb67ec3d3').
(#isProperty -> true).
(#label -> nil).
(#next -> #'ca50309f-543b-c845-83d0-749a6f7cbb2e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#hAlignment -> #right).
(#priority -> 3170)
}))
})