*VivideDynamicAnalysis-definitions
def05d6eec5628f4344862ae28b4c7bddbd
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 January 2014 11:07:50 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'05d6eec5-628f-4344-862a-e28b4c7bddbd'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:node | #icon -> (true caseOf: {
	[node receiverClass = node parent receiverClass and: [node receiverClass = UiScrollBarSliderButton]]
		-> [UiFugueIcons arrowReturnIcon].
	[node parent receiverClass = UiScrollBarSliderButton] -> [UiFugueIcons arrow180MediumIcon].}
		otherwise: [])]'); add: (#mapType->#each); add: (#block->[:node | #icon -> (true caseOf: {
	[node receiverClass = node parent receiverClass and: [node receiverClass = UiScrollBarSliderButton]]
		-> [UiFugueIcons arrowReturnIcon].
	[node parent receiverClass = UiScrollBarSliderButton] -> [UiFugueIcons arrow180MediumIcon].}
		otherwise: [])]); yourself)