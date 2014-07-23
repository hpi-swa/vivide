definitions
defc17093741f275d4591318defe81a40da
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 1:05:59 pm'); yourself)); add: (#id->#'c1709374-1f27-5d45-9131-8defe81a40da'); add: (#inputKind->TestCase class); add: (#block->nil); add: (#sourceCode->'TestSuite new in: [:suite |
	self do: [:each | 
		each isAbstract
			ifFalse: [each addToSuiteFromSelectors: suite]].
	suite run in: [:result |
		result dispatchResultsIntoHistory.
"		result explore"]]'); add: (#receiverIsCollection->true); yourself)