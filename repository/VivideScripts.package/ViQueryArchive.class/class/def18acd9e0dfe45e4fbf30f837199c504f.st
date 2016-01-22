definitions
def18acd9e0dfe45e4fbf30f837199c504f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs gather: [:o | o objects reversed gather: [:assoc |
		assoc value collect: [:ea | assoc key -> ea]]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'18acd9e0-dfe4-5e4f-bf30-f837199c504f').
(#inputKind -> ViStampedHistory).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objs | objs gather: [:o | o objects reversed gather: [:assoc |
		assoc value collect: [:ea | assoc key -> ea]]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})