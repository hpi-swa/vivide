definitions
defb4a6a1f03bb59e46bc4d84a9213e28d8
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 5:35:25 pm'); yourself)); add: (#id->#'b4a6a1f0-3bb5-9e46-bc4d-84a9213e28d8'); add: (#inputKind->Process); add: (#block->nil); add: (#sourceCode->'self suspendedContext in: [:oldContext |
	(self popTo: oldContext sender) == oldContext ifTrue: [
		self restartTop; stepToSendOrReturn]]'); add: (#receiverIsCollection->false); yourself)