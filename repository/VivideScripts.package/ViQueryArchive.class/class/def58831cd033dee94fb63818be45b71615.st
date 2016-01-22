definitions
def58831cd033dee94fb63818be45b71615
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:fileEntry | {
	#text -> fileEntry name.
	#icon -> (true caseOf: {
		[ImageReadWriter allTypicalFileExtensions includes: fileEntry extension asLowercase] -> [UiFugueIcons pictureIcon].
		[#(txt log ini tex) includes: fileEntry extension asLowercase] -> [UiFugueIcons documentTextIcon].
		[fileEntry extension asLowercase = 'pdf'] -> [UiFugueIcons documentPdfIcon]
	} otherwise: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'58831cd0-33de-e94f-b638-18be45b71615').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:53:10 pm')})).
(#sourceCode -> '[:fileEntry | {
	#text -> fileEntry name.
	#icon -> (true caseOf: {
		[ImageReadWriter allTypicalFileExtensions includes: fileEntry extension asLowercase] -> [UiFugueIcons pictureIcon].
		[#(txt log ini tex) includes: fileEntry extension asLowercase] -> [UiFugueIcons documentTextIcon].
		[fileEntry extension asLowercase = ''pdf''] -> [UiFugueIcons documentPdfIcon]
	} otherwise: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})