definitions
defe9bef106e5e8514cac3a8648bb731c05
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls |
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]).
(#class -> ViQueryMapDefinition).
(#id -> #'e9bef106-e5e8-514c-ac3a-8648bb731c05').
(#inputKind -> ClassDescription).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:26:17 pm')})).
(#sourceCode -> '[:cls |
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})