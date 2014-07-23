definitions
defe69a74c08b636e47ad8474d68829579b
	<definition>

	^ ((Dictionary new) add: (#inputKind->ClassDescription); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e69a74c0-8b63-6e47-ad84-74d68829579b'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:classes | (classes
	gather: [:cls | cls withAllSuperclasses copyWithoutAll: {ProtoObject.Object}])
	gather: [:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values]]'); add: (#mapType->#all); add: (#block->[:classes | (classes
	gather: [:cls | cls withAllSuperclasses copyWithoutAll: {ProtoObject.Object}])
	gather: [:cls | cls theNonMetaClass methodDict values, cls theMetaClass methodDict values]]); yourself)