definitions
defc7f13eaf02b370468b08c7d1a5a911dd
	<definition>

	^ ((Dictionary new) add: (#inputKind->ClassDescription); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 November 2013 10:44:12 am'); yourself)); add: (#updateClearDefinition->#noSystemChangeNotifications); add: (#outputKind->CompiledMethod); add: (#id->#'c7f13eaf-02b3-7046-8b08-c7d1a5a911dd'); add: (#updateSetDefinition->#'24fbad74-75df-a445-8512-ed665ca9c87e'); add: (#sourceCode->'[:cls |
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls withAllSuperclasses gather: [:c | c traits]),
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls class instVarNames collect: [:nm | cls class -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]'); add: (#mapType->#each); add: (#block->[:cls |
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls withAllSuperclasses gather: [:c | c traits]),
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls class instVarNames collect: [:nm | cls class -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]); yourself)