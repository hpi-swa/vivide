definitions
def11c68f4bf94ee44c973fd41b8b7f2351
	<definition>

	^ ((Dictionary new) add: (#inputKind->TestCase class); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 1:28:43 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Association); add: (#id->#'11c68f4b-f94e-e44c-973f-d41b8b7f2351'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]'); add: (#mapType->#each); add: (#block->[:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]); yourself)