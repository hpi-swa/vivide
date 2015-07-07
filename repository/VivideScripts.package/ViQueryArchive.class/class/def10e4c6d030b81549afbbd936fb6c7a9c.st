definitions
def10e4c6d030b81549afbbd936fb6c7a9c
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 November 2013 10:51:34 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'10e4c6d0-30b8-1549-afbb-d936fb6c7a9c'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | obj isVariableBinding
	ifTrue: [''** variables **'']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: [''** traits **'']
			ifFalse: [''** inheritance **'']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]]'); add: (#mapType->#each); add: (#block->[:obj | obj isVariableBinding
	ifTrue: ['** variables **']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: ['** traits **']
			ifFalse: ['** inheritance **']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]]); yourself)