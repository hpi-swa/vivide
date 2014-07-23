definitions
defd89728bf0d8f11439a93e4a1aad379f4
	<definition>

	^ ((Dictionary new) add: (#inputKind->Process); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'12 November 2013 5:10:33 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ContextPart); add: (#id->#'d89728bf-0d8f-1143-9a93-e4a1aad379f4'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]'); add: (#mapType->#each); add: (#block->[:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]); yourself)