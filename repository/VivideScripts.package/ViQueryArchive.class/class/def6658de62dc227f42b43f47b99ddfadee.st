definitions
def6658de62dc227f42b43f47b99ddfadee
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:stamp | 
	#text -> (stamp value lastStep ifNil: ['NO STEP'] ifNotNil: [:step | step definition
		ifNil: ['FILL STEP']
		ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]])]).
(#class -> ViQueryMapDefinition).
(#id -> #'6658de62-dc22-7f42-b43f-47b99ddfadee').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:52:02 pm')})).
(#sourceCode -> '[:stamp | 
	#text -> (stamp value lastStep ifNil: [''NO STEP''] ifNotNil: [:step | step definition
		ifNil: [''FILL STEP'']
		ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})