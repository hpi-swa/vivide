definitions
defe9bef106e5e8514cac3a8648bb731c05
	<definition>

	^ ((Dictionary new) add: (#inputKind->ClassDescription); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 5:26:17 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e9bef106-e5e8-514c-ac3a-8648bb731c05'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:cls |
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]'); add: (#mapType->#each); add: (#block->[:cls |
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]); yourself)