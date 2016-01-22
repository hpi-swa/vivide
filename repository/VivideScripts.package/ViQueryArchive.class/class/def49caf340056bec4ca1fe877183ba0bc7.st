definitions
def49caf340056bec4ca1fe877183ba0bc7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:hub | hub projects collect: [:nm | hub project: nm] thenSelect: [:p | p ~~ #notFound]]).
(#class -> ViQueryMapDefinition).
(#id -> #'49caf340-056b-ec4c-a1fe-877183ba0bc7').
(#inputKind -> ViSmalltalkHub).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:54:28 pm')})).
(#sourceCode -> '[:hub | hub projects collect: [:nm | hub project: nm] thenSelect: [:p | p ~~ #notFound]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})