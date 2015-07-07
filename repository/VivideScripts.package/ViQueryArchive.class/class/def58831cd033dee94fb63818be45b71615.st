definitions
def58831cd033dee94fb63818be45b71615
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 December 2013 4:53:10 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'58831cd0-33de-e94f-b638-18be45b71615'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:fileEntry | {
	#text -> fileEntry name.
	#icon -> (true caseOf: {
		[ImageReadWriter allTypicalFileExtensions includes: fileEntry extension asLowercase] -> [UiFugueIcons pictureIcon].
		[#(txt log ini tex) includes: fileEntry extension asLowercase] -> [UiFugueIcons documentTextIcon].
		[fileEntry extension asLowercase = ''pdf''] -> [UiFugueIcons documentPdfIcon]
	} otherwise: [ViIcons blankIcon])}]'); add: (#mapType->#each); add: (#block->[:fileEntry | {
	#text -> fileEntry name.
	#icon -> (true caseOf: {
		[ImageReadWriter allTypicalFileExtensions includes: fileEntry extension asLowercase] -> [UiFugueIcons pictureIcon].
		[#(txt log ini tex) includes: fileEntry extension asLowercase] -> [UiFugueIcons documentTextIcon].
		[fileEntry extension asLowercase = 'pdf'] -> [UiFugueIcons documentPdfIcon]
	} otherwise: [ViIcons blankIcon])}]); yourself)