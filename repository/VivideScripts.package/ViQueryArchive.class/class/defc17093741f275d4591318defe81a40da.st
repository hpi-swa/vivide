definitions
defc17093741f275d4591318defe81a40da
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#className -> #ViQuerySnippetDefinition).
(#id -> #'c1709374-1f27-5d45-9131-8defe81a40da').
(#inputKind -> TestCase class).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:05:59 pm')
})).
(#receiverIsCollection -> true).
(#sourceCode -> 'TestSuite new in: [:suite |
	self do: [:each | 
		each isAbstract
			ifFalse: [each addToSuiteFromSelectors: suite]].
	suite run in: [:result |
		result dispatchResultsIntoHistory.
"		result explore"]]')
})