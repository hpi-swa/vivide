definitions
defb4a6a1f03bb59e46bc4d84a9213e28d8
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#className -> #ViQuerySnippetDefinition).
(#id -> #'b4a6a1f0-3bb5-9e46-bc4d-84a9213e28d8').
(#inputKind -> Process).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:35:25 pm')
})).
(#receiverIsCollection -> false).
(#sourceCode -> 'self suspendedContext in: [:oldContext |
	(self popTo: oldContext sender) == oldContext ifTrue: [
		self restartTop; stepToSendOrReturn]]')
})