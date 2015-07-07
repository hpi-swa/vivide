definitions
def0d03c64fbdac564497712e467ce0a48e
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 2:10:32 pm'); yourself)); add: (#id->#'0d03c64f-bdac-5644-9771-2e467ce0a48e'); add: (#inputKind->TestCase class); add: (#block->nil); add: (#sourceCode->'TestSuite new in: [:suite |
	self do: [:each | 
		each isAbstract
			ifFalse: [each addToSuiteFromSelectors: suite]].
	MessageTally spyOn: [suite run in: [:result |
		result dispatchResultsIntoHistory]]]'); add: (#receiverIsCollection->true); yourself)