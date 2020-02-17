steps
step4c0b175cebc3fb4e9b1c31b8b5b5660d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['']
			ifFalse: [' (', receiverClass theNonMetaClass name, ')']))}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0a1a8d7f-c69c-f248-95d3-e826729b8629').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | 
	| receiverClass |
	receiverClass := obj instVarNamed: #class.
	{#text -> ((ViObjectOriginService doObject: obj method), 
		(receiverClass = obj method methodClass 
			ifTrue: ['''']
			ifFalse: ['' ('', receiverClass theNonMetaClass name, '')'']))}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0a1a8d7f-c69c-f248-95d3-e826729b8629').
(#iconCode -> 'nil').
(#id -> #'4c0b175c-ebc3-fb4e-9b1c-31b8b5b5660d').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c656fd1e-4df7-2247-b673-381f86e04eef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Origin').
(#labelColor -> '#AAAAAA').
(#priority -> 2350)
}))
})