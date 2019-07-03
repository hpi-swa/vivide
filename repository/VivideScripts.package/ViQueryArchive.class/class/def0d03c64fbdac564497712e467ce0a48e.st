definitions
def0d03c64fbdac564497712e467ce0a48e
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#className -> #ViQuerySnippetDefinition).
(#id -> #'0d03c64f-bdac-5644-9771-2e467ce0a48e').
(#inputKind -> TestCase class).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 2:10:32 pm')
})).
(#receiverIsCollection -> true).
(#sourceCode -> 'TestSuite new in: [:suite |
	self do: [:each | 
		each isAbstract
			ifFalse: [each addToSuiteFromSelectors: suite]].
	MessageTally spyOn: [suite run in: [:result |
		result dispatchResultsIntoHistory]]]')
})