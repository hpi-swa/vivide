definitions
deftoplevelClasses
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:behaviors | behaviors reject: [:b | behaviors includes: b superclass]]).
(#class -> ViQueryMapDefinition).
(#id -> #toplevelClasses).
(#inputKind -> Behavior).
(#mapType -> #all).
(#outputKind -> Behavior).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:behaviors | behaviors reject: [:b | behaviors includes: b superclass]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})