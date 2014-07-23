definitions
def471e5b7ef93e5445a146c2d6fa8de2fc
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 February 2014 10:53:24 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'471e5b7e-f93e-5445-a146-c2d6fa8de2fc'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackUi to: value]
		ifFalse: [line key hasCategory: #setupCallbackUi]]}]'); add: (#mapType->#each); add: (#block->[:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackUi to: value]
		ifFalse: [line key hasCategory: #setupCallbackUi]]}]); yourself)