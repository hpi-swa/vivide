definitions
defb333ec1c585c2243b6904161607177bf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:definitions | definitions select: [:def | def isViewDefinition]]).
(#class -> ViQueryMapDefinition).
(#id -> #'b333ec1c-585c-2243-b690-4161607177bf').
(#inputKind -> ViQueryStepDefinition).
(#mapType -> #all).
(#outputKind -> ViQueryViewDefinition).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:31 pm')})).
(#sourceCode -> '[:definitions | definitions select: [:def | def isViewDefinition]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})