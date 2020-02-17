definitions
defc0ce300c864b7b4f98704bfbf0efa5ff
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#className -> #ViQuerySnippetDefinition).
(#id -> #'c0ce300c-864b-7b4f-9870-4bfbf0efa5ff').
(#inputKind -> Process).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 February 2014 3:37 pm')
})).
(#receiverIsCollection -> false).
(#sourceCode -> '| ctxt isUiProcess |
ctxt := self suspendedContext.
isUiProcess := nil.
[ctxt notNil & isUiProcess isNil] whileTrue: [
	(ctxt receiver == Project
		and: [ctxt method selector == #spawnNewProcess])
			ifTrue: [isUiProcess := true].
	ctxt := ctxt sender].
isUiProcess ifNil: [isUiProcess := false].

isUiProcess ifTrue: [
	Project resumeProcess: self.
	Processor terminateActive "old ui process"]
ifFalse: [self resume].')
})