definitions
def1476734773dab249817d740c37a6ba4d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 1:11:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'14767347-73da-b249-817d-740c37a6ba4d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackModel to: value]
		ifFalse: [line key hasCategory: #setupCallbackModel]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackModel to: value]
		ifFalse: [line key hasCategory: #setupCallbackModel]]}]); yourself)