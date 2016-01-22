definitions
defe43c93d0ee96e5428395df731e1f9503
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:entry | {
	#text -> entry name.
	#icon -> (ViThumbnailCache default thumbnailForEntry: entry size: 100@100)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'e43c93d0-ee96-e542-8395-df731e1f9503').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:entry | {
	#text -> entry name.
	#icon -> (ViThumbnailCache default thumbnailForEntry: entry size: 100@100)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})