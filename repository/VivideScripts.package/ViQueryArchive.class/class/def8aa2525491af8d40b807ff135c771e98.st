definitions
def8aa2525491af8d40b807ff135c771e98
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 2:21:36 pm'); yourself)); add: (#id->#'8aa25254-91af-8d40-b807-ff135c771e98'); add: (#inputKind->TestCase class); add: (#block->nil); add: (#sourceCode->'TestSuite new in: [:suite |
	self do: [:class |
		((TestResult historyFor: class) at: #errors) do: [:error |
			suite addTest: (class selector: error)]].
	suite run in: [:result |
		result dispatchResultsIntoHistory.
"		result explore"]]'); add: (#receiverIsCollection->true); yourself)