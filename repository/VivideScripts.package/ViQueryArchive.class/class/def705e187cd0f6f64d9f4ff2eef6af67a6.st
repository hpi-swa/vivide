definitions
def705e187cd0f6f64d9f4ff2eef6af67a6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | #text -> (step definition ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText])]).
(#class -> ViQueryMapDefinition).
(#id -> #'705e187c-d0f6-f64d-9f4f-f2eef6af67a6').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:16:41 pm')})).
(#sourceCode -> '[:step | #text -> (step definition ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})