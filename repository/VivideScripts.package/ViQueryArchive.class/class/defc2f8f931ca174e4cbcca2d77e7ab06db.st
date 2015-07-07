definitions
defc2f8f931ca174e4cbcca2d77e7ab06db
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 1:06:18 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'c2f8f931-ca17-4e4c-bcca-2d77e7ab06db'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #return to: value]
		ifFalse: [line key hasCategory: #return]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #return to: value]
		ifFalse: [line key hasCategory: #return]]}]); yourself)