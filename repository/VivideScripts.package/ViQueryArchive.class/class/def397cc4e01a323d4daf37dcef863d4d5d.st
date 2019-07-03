definitions
def397cc4e01a323d4daf37dcef863d4d5d
	<definition>

	^ (Dictionary newFrom: {
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
})