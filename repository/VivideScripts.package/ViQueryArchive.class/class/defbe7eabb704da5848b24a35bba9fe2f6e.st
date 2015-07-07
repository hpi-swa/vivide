definitions
defbe7eabb704da5848b24a35bba9fe2f6e
	<definition>

	^ ((Dictionary new) add: (#inputKind->MethodReference); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 6:55:19 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'be7eabb7-04da-5848-b24a-35bba9fe2f6e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]'); add: (#mapType->#each); add: (#block->[:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]); yourself)