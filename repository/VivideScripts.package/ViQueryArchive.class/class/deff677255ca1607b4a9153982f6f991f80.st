definitions
deff677255ca1607b4a9153982f6f991f80
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:53:40 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'f677255c-a160-7b4a-9153-982f6f991f80'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUi to: value]
		ifFalse: [line key hasCategory: #callUi]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUi to: value]
		ifFalse: [line key hasCategory: #callUi]]}]); yourself)