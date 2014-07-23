*VivideDynamicAnalysis-definitions
defb799fc21f5b2ed4ab6fc286da12d5cfe
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 January 2014 11:07:25 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'b799fc21-f5b2-ed4a-b6fc-286da12d5cfe'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:node | #icon -> (true caseOf: {
	[node receiverClass = node parent receiverClass and: [node receiverClass = UiScrollBar]]
		-> [UiFugueIcons arrowReturn180LeftIcon].
	[node parent receiverClass = UiScrollBar] -> [UiFugueIcons arrow000MediumIcon].}
		otherwise: [])]'); add: (#mapType->#each); add: (#block->[:node | #icon -> (true caseOf: {
	[node receiverClass = node parent receiverClass and: [node receiverClass = UiScrollBar]]
		-> [UiFugueIcons arrowReturn180LeftIcon].
	[node parent receiverClass = UiScrollBar] -> [UiFugueIcons arrow000MediumIcon].}
		otherwise: [])]); yourself)