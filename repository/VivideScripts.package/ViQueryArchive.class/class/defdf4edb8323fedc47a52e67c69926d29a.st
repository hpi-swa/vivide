definitions
defdf4edb8323fedc47a52e67c69926d29a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)]).
(#class -> ViQueryMapDefinition).
(#id -> #'df4edb83-23fe-dc47-a52e-67c69926d29a').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:48:45 pm')})).
(#sourceCode -> '[(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})