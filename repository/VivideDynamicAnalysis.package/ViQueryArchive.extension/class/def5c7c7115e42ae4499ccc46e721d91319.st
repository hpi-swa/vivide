*VivideDynamicAnalysis-definitions
def5c7c7115e42ae4499ccc46e721d91319
	<definition>

	^ ((Dictionary new) add: (#inputKind->SdCallgraph); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 January 2014 10:58:39 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->SdMethodCallNode); add: (#id->#'5c7c7115-e42a-e449-9ccc-46e721d91319'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tree | tree select: [:node | (node parent notNil and: [node parent isCallgraph not]) and: [
	({node parent receiverClass. node receiverClass} includesAllOf: {UiScrollBar. UiScrollBarSliderButton})
		"or: [node parent receiverClass = node receiverClass and: [{UiScrollBar. TableLayout} includes: node receiverClass ]]"]]]'); add: (#mapType->#each); add: (#block->[:tree | tree select: [:node | (node parent notNil and: [node parent isCallgraph not]) and: [
	({node parent receiverClass. node receiverClass} includesAllOf: {UiScrollBar. UiScrollBarSliderButton})
		"or: [node parent receiverClass = node receiverClass and: [{UiScrollBar. TableLayout} includes: node receiverClass ]]"]]]); yourself)