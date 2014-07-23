definitions
defeb2e0d5a634cfa4097820e28013862b5
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 November 2013 4:40:32 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'eb2e0d5a-634c-fa40-9782-0e28013862b5'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | 
	obj isVariableBinding ifTrue: [''(Bindings)''] ifFalse: [
		(PackageOrganizer default packageOfSystemCategory: obj class category ifNone: []) name]]'); add: (#mapType->#each); add: (#block->[:obj | 
	obj isVariableBinding ifTrue: ['(Bindings)'] ifFalse: [
		(PackageOrganizer default packageOfSystemCategory: obj class category ifNone: []) name]]); yourself)