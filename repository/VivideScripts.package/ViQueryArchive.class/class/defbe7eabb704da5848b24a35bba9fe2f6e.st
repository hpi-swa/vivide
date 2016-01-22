definitions
defbe7eabb704da5848b24a35bba9fe2f6e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]).
(#class -> ViQueryMapDefinition).
(#id -> #'be7eabb7-04da-5848-b24a-35bba9fe2f6e').
(#inputKind -> MethodReference).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:55:19 pm')})).
(#sourceCode -> '[:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})