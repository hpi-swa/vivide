*VivideContextS-definitions
def8332100e7b33804e8ae96c858810d0a0
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'24 May 2014 6:00:20 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'8332100e-7b33-804e-8ae9-6c858810d0a0'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | 
	method isContextSMethod
		ifTrue: [method methodChainFor: Processor activeProcess csInfo activeLayers]
		ifFalse: [#()]]'); add: (#mapType->#each); add: (#block->[:method | 
	method isContextSMethod
		ifTrue: [method methodChainFor: Processor activeProcess csInfo activeLayers]
		ifFalse: [#()]]); yourself)