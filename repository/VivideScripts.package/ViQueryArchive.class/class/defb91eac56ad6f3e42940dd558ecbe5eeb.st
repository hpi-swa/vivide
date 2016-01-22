definitions
defb91eac56ad6f3e42940dd558ecbe5eeb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:definitions | definitions select: [:def | def isMapDefinition]]).
(#class -> ViQueryMapDefinition).
(#id -> #'b91eac56-ad6f-3e42-940d-d558ecbe5eeb').
(#inputKind -> ViQueryStepDefinition).
(#mapType -> #all).
(#outputKind -> ViQueryMapDefinition).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 September 2013 4:37:28 pm')})).
(#sourceCode -> '[:definitions | definitions select: [:def | def isMapDefinition]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})