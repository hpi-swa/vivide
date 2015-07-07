definitions
def4dcfff3264f3a54d955efaab62251b7d
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 February 2014 2:29:25 pm'); yourself)); add: (#id->#'4dcfff32-64f3-a54d-955e-faab62251b7d'); add: (#inputKind->Process); add: (#block->nil); add: (#sourceCode->'self suspendedContext in: [:oldContext |
	self completeStep: oldContext.
	self suspendedContext == oldContext
		ifTrue: [self stepToSendOrReturn]].'); add: (#receiverIsCollection->false); yourself)