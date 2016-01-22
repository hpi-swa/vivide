definitions
def53b0702cc7b9b74c94b3d4f943c6e9bc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:process | {#text -> (process caseOf: {
	[Project uiProcess] -> ['ui process'].
	[Processor backgroundProcess] -> ['idle process']}
	otherwise: [process name])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'53b0702c-c7b9-b74c-94b3-d4f943c6e9bc').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 June 2014 10:13:14 am')})).
(#sourceCode -> '[:process | {#text -> (process caseOf: {
	[Project uiProcess] -> [''ui process''].
	[Processor backgroundProcess] -> [''idle process'']}
	otherwise: [process name])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})