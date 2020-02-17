steps
stepac1f8319046ce04db22a43df31b7abef
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> entry name.
	#icon -> (ViThumbnailCache default thumbnailForEntry: entry size: 100@100)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'a5c3d962-f79d-ca4a-b3f1-4ec8b8ee6b26').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | {
	#text -> entry name.
	#icon -> (ViThumbnailCache default thumbnailForEntry: entry size: 100@100)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a5c3d962-f79d-ca4a-b3f1-4ec8b8ee6b26').
(#iconCode -> 'nil').
(#id -> #'ac1f8319-046c-e04d-b22a-43df31b7abef').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#hAlignment -> #center).
(#headerText -> 'Origin').
(#itemOrientation -> #vertical).
(#priority -> 2540).
(#vAlignment -> #bottom)
}))
})