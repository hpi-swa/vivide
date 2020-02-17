steps
stepd96e910adf735a4cb7608811fac45378
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> ('{1}<br><font color="#777777">{2}<br>{3} Bytes</font>'
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedToSize: 105@105)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'1d6bdedc-fe37-864b-8af7-6847c2ec88a1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> (''{1}<br><font color="#777777">{2}<br>{3} Bytes</font>''
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedToSize: 105@105)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1d6bdedc-fe37-864b-8af7-6847c2ec88a1').
(#iconCode -> 'nil').
(#id -> #'d96e910a-df73-5a4c-b760-8811fac45378').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#hAlignment -> #left).
(#headerText -> 'Origin').
(#itemOrientation -> #horizontalMaxHeight).
(#priority -> 2570).
(#vAlignment -> #top)
}))
})