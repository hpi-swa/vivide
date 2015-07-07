definitions
def4bd59430a20cda418120fdbb4aeeefc3
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'4bd59430-a20c-da41-8120-fdbb4aeeefc3'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:op | true caseOf: {
	[op definition isClassDefinition] -> [''Classes''].
	[op definition isClassDefinitionExtension] -> [''Class Extensions''].
	[op definition isMethodDefinition] -> [''Methods''].
	[op definition isOrganizationDefinition] -> [''Organizations''].
	[op definition isScriptDefinition] -> [''Scripts'']}]'); add: (#mapType->#each); add: (#block->[:op | true caseOf: {
	[op definition isClassDefinition] -> ['Classes'].
	[op definition isClassDefinitionExtension] -> ['Class Extensions'].
	[op definition isMethodDefinition] -> ['Methods'].
	[op definition isOrganizationDefinition] -> ['Organizations'].
	[op definition isScriptDefinition] -> ['Scripts']}]); yourself)