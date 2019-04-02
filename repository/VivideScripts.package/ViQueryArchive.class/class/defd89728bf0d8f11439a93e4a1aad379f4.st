definitions
defd89728bf0d8f11439a93e4a1aad379f4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]).
(#class -> ViQueryMapDefinition).
(#id -> #'d89728bf-0d8f-1143-9a93-e4a1aad379f4').
(#inputKind -> Process).
(#mapType -> #each).
(#outputKind -> Context).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 5:10:33 pm')})).
(#sourceCode -> '[:process | process == Processor activeProcess
	ifTrue: [thisContext]
	ifFalse: [process suspendedContext]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})