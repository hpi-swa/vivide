definitions
def3a43e006f8b96c4b8214c5f909d653f2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:u1 :u2 | (u1 at: #fullName) asLowercase <= (u2 at: #fullName) asLowercase]).
(#class -> ViQueryMapDefinition).
(#id -> #'3a43e006-f8b9-6c4b-8214-c5f909d653f2').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:37:47 pm')})).
(#sourceCode -> '[:u1 :u2 | (u1 at: #fullName) asLowercase <= (u2 at: #fullName) asLowercase]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})