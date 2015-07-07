definitions
def46d592491c70d0428d2cc784959fd192
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:10:45 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'46d59249-1c70-d042-8d2c-c784959fd192'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackHelper to: value]
		ifFalse: [line key hasCategory: #setupCallbackHelper]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackHelper to: value]
		ifFalse: [line key hasCategory: #setupCallbackHelper]]}]); yourself)