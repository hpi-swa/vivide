definitions
defallMethodsForClass
	<definition>

	^ ((Dictionary new) add: (#inputKind->UiIcons); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->CompiledMethod); add: (#id->#allMethodsForClass); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]'); add: (#mapType->#each); add: (#block->[:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]); yourself)