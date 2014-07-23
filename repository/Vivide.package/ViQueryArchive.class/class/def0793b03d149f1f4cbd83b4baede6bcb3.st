definitions
def0793b03d149f1f4cbd83b4baede6bcb3
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:13:30 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'0793b03d-149f-1f4c-bd83-b4baede6bcb3'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUnknown to: value]
		ifFalse: [line key hasCategory: #callUnknown]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUnknown to: value]
		ifFalse: [line key hasCategory: #callUnknown]]}]); yourself)