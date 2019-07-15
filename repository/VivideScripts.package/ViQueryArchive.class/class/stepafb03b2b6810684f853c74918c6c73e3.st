steps
stepafb03b2b6810684f853c74918c6c73e3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj value).
	#icon -> ((ViIconService doObject: obj value) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b3745d63-c2e7-574b-8d4b-2fcc84585bb1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj value).
	#icon -> ((ViIconService doObject: obj value) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b3745d63-c2e7-574b-8d4b-2fcc84585bb1').
(#iconCode -> 'nil').
(#id -> #'afb03b2b-6810-684f-853c-74918c6c73e3').
(#isProperty -> true).
(#label -> nil).
(#next -> #'d4231597-1147-6f42-8714-146585f297d8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 3:44:05 pm').
(#headerText -> 'Selector').
(#priority -> 5990)
}))
})