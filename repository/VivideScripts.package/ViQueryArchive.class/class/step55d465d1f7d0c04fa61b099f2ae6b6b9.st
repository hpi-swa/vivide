steps
step55d465d1f7d0c04fa61b099f2ae6b6b9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:fileEntry | {
	#text -> fileEntry name.
	#icon -> (true caseOf: {
		[ImageReadWriter allTypicalFileExtensions includes: fileEntry extension asLowercase] -> [UiFugueIcons pictureIcon].
		[#(txt log ini tex) includes: fileEntry extension asLowercase] -> [UiFugueIcons documentTextIcon].
		[fileEntry extension asLowercase = 'pdf'] -> [UiFugueIcons documentPdfIcon]
	} otherwise: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'397cc4e0-1a32-3d4d-af37-dcef863d4d5d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:53:10 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:fileEntry | {
	#text -> fileEntry name.
	#icon -> (true caseOf: {
		[ImageReadWriter allTypicalFileExtensions includes: fileEntry extension asLowercase] -> [UiFugueIcons pictureIcon].
		[#(txt log ini tex) includes: fileEntry extension asLowercase] -> [UiFugueIcons documentTextIcon].
		[fileEntry extension asLowercase = ''pdf''] -> [UiFugueIcons documentPdfIcon]
	} otherwise: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'397cc4e0-1a32-3d4d-af37-dcef863d4d5d').
(#iconCode -> 'nil').
(#id -> #'55d465d1-f7d0-c04f-a61b-099f2ae6b6b9').
(#isProperty -> true).
(#label -> nil).
(#next -> #'bb553ae0-c81d-4641-964f-7f27055d9c15').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Name').
(#priority -> 4540).
(#resizeMode -> #rigid)
}))
})