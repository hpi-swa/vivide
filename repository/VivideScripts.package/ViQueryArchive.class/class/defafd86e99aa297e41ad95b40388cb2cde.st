definitions
defafd86e99aa297e41ad95b40388cb2cde
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#className -> #ViQuerySnippetDefinition).
(#id -> #'afd86e99-aa29-7e41-ad95-b40388cb2cde').
(#inputKind -> TestCase class).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 2:15:12 pm')
})).
(#receiverIsCollection -> true).
(#sourceCode -> 'TestSuite new in: [:suite |
	self do: [:class |
		((TestResult historyFor: class) at: #failures) do: [:failure |
			suite addTest: (class selector: failure)]].
	suite run in: [:result |
		result dispatchResultsIntoHistory.
"		result explore"]]')
})