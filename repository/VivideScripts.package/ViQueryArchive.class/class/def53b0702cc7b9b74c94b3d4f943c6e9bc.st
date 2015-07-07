definitions
def53b0702cc7b9b74c94b3d4f943c6e9bc
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 June 2014 10:13:14 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'53b0702c-c7b9-b74c-94b3-d4f943c6e9bc'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:process | {#text -> (process caseOf: {
	[Project uiProcess] -> [''ui process''].
	[Processor backgroundProcess] -> [''idle process'']}
	otherwise: [process name])}]'); add: (#mapType->#each); add: (#block->[:process | {#text -> (process caseOf: {
	[Project uiProcess] -> ['ui process'].
	[Processor backgroundProcess] -> ['idle process']}
	otherwise: [process name])}]); yourself)