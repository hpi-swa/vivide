definitions
defd06feec8587b1b4b8b63a5aeb5f665b2
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d06feec8-587b-1b4b-8b63-a5aeb5f665b2'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:entry | {
	#text -> (''{1}<br><font color="#777777">{2}<br>{3} Bytes</font>''
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedTo: 105@105)}]'); add: (#mapType->#each); add: (#block->[:entry | {
	#text -> ('{1}<br><font color="#777777">{2}<br>{3} Bytes</font>'
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedTo: 105@105)}]); yourself)