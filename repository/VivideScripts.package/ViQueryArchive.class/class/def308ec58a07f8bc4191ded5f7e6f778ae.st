definitions
def308ec58a07f8bc4191ded5f7e6f778ae
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'308ec58a-07f8-bc41-91de-d5f7e6f778ae'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:classToProtocol | ''{1}{2}'' format: {
	classToProtocol value asString.
	classToProtocol key isMeta
		ifTrue: ['' [class]'']
		ifFalse: ['''']}]'); add: (#mapType->#each); add: (#block->[:classToProtocol | '{1}{2}' format: {
	classToProtocol value asString.
	classToProtocol key isMeta
		ifTrue: [' [class]']
		ifFalse: ['']}]); yourself)