definitions
def4dcfff3264f3a54d955efaab62251b7d
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#class -> ViQuerySnippetDefinition).
(#id -> #'4dcfff32-64f3-a54d-955e-faab62251b7d').
(#inputKind -> Process).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 February 2014 2:29:25 pm')})).
(#receiverIsCollection -> false).
(#sourceCode -> 'self suspendedContext in: [:oldContext |
	self completeStep: oldContext.
	self suspendedContext == oldContext
		ifTrue: [self stepToSendOrReturn]].')})