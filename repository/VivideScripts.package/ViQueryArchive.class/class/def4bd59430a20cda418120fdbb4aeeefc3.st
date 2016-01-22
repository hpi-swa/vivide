definitions
def4bd59430a20cda418120fdbb4aeeefc3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op | true caseOf: {
	[op definition isClassDefinition] -> ['Classes'].
	[op definition isClassDefinitionExtension] -> ['Class Extensions'].
	[op definition isMethodDefinition] -> ['Methods'].
	[op definition isOrganizationDefinition] -> ['Organizations'].
	[op definition isScriptDefinition] -> ['Scripts']}]).
(#class -> ViQueryMapDefinition).
(#id -> #'4bd59430-a20c-da41-8120-fdbb4aeeefc3').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op | true caseOf: {
	[op definition isClassDefinition] -> [''Classes''].
	[op definition isClassDefinitionExtension] -> [''Class Extensions''].
	[op definition isMethodDefinition] -> [''Methods''].
	[op definition isOrganizationDefinition] -> [''Organizations''].
	[op definition isScriptDefinition] -> [''Scripts'']}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})