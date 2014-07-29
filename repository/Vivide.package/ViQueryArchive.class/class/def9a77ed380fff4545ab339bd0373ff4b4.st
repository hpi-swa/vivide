definitions
def9a77ed380fff4545ab339bd0373ff4b4
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'25 July 2014 3:54:26 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'9a77ed38-0fff-4545-ab33-9bd0373ff4b4'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | 
	(method methodClass compiledMethodAt: method selector) in: [:lm |
		lm isContextSMethod ifFalse: [#()] ifTrue: [
			{lm basePartialMethod}, lm partialMethods]]]'); add: (#mapType->#each); add: (#block->[:method | 
	(method methodClass compiledMethodAt: method selector) in: [:lm |
		lm isContextSMethod ifFalse: [#()] ifTrue: [
			{lm basePartialMethod}, lm partialMethods]]]); yourself)