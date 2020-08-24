steps
stepe44e7438eba573448590a778889ab428
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject class == ViSeparator ifTrue: [ { #text -> ' ' } ] ifFalse: [ [:obj | {
	#text -> (ViLabelStringService doObject: obj value).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'15e1f99a-0b69-104d-b81a-f6d4a89600b1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:36:49 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject class == ViSeparator ifTrue: [ { #text -> '' '' } ] ifFalse: [ [:obj | {
	#text -> (ViLabelStringService doObject: obj value).
	#icon -> (((ViIconService doObject: obj value)
		ifNil: [ViIcons blankIcon]) scaledToSize: 16@16)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'15e1f99a-0b69-104d-b81a-f6d4a89600b1').
(#iconCode -> 'nil').
(#id -> #'e44e7438-eba5-7344-8590-a778889ab428').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:22:01 am').
(#labelColor -> '#000000').
(#priority -> 5050).
(#resizeMode -> #spaceFill)
}))
})