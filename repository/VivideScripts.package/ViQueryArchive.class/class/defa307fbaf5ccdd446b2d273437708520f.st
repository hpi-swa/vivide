definitions
defa307fbaf5ccdd446b2d273437708520f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'a307fbaf-5ccd-d446-b2d2-73437708520f').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 September 2013 12:03:56 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})