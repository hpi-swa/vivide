definitions
deff8634096d4583544a4e12326cba8bd5b
	<definition>

	^ (Dictionary newFrom: {
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
})