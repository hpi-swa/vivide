definitions
def7625f31d1d008f41ae4ed329332e8545
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:08:57 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'7625f31d-1d00-8f41-ae4e-d329332e8545'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callHelper to: value]
		ifFalse: [line key hasCategory: #callHelper]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callHelper to: value]
		ifFalse: [line key hasCategory: #callHelper]]}]); yourself)