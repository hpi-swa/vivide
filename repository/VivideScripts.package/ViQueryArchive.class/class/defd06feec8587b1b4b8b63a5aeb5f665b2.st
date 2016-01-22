definitions
defd06feec8587b1b4b8b63a5aeb5f665b2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:entry | {
	#text -> ('{1}<br><font color="#777777">{2}<br>{3} Bytes</font>'
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedToSize: 105@105)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'d06feec8-587b-1b4b-8b63-a5aeb5f665b2').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:entry | {
	#text -> (''{1}<br><font color="#777777">{2}<br>{3} Bytes</font>''
		format: {
			entry name.
			ViToolSet printRelativeTimeStamp: entry creationDateAndTime asTimeStamp.
			entry fileSize}) asHtmlText.
	#icon -> ((ViThumbnailCache default thumbnailForEntry: entry size: 100@100) clippedToSize: 105@105)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})