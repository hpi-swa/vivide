definitions
defef17b0c33ef9274e86d1cf657d2f721b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:definitions | definitions select: [:def | def isUpdateDefinition]]).
(#class -> ViQueryMapDefinition).
(#id -> #'ef17b0c3-3ef9-274e-86d1-cf657d2f721b').
(#inputKind -> ViQueryStepDefinition).
(#mapType -> #all).
(#outputKind -> ViQueryUpdateDefinition).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:31 pm')})).
(#sourceCode -> '[:definitions | definitions select: [:def | def isUpdateDefinition]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})