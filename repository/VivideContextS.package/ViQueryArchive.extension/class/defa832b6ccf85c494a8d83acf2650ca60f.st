*VivideContextS-definitions
defa832b6ccf85c494a8d83acf2650ca60f
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 May 2014 3:10:37 pm'); yourself)); add: (#id->#'a832b6cc-f85c-494a-8d83-acf2650ca60f'); add: (#inputKind->CSLayer); add: (#block->nil); add: (#sourceCode->'(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess) do: [:p |
		p csInfo activeLayers: (p csInfo activeLayers copyWithout: self layerName) asSet asArray]'); add: (#receiverIsCollection->false); yourself)