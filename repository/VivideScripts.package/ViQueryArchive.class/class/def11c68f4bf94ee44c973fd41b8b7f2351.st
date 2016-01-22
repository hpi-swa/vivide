definitions
def11c68f4bf94ee44c973fd41b8b7f2351
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]).
(#class -> ViQueryMapDefinition).
(#id -> #'11c68f4b-f94e-e44c-973f-d41b8b7f2351').
(#inputKind -> TestCase class).
(#mapType -> #each).
(#outputKind -> Association).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:28:43 pm')})).
(#sourceCode -> '[:testClass | (TestResult historyFor: testClass) associations
	select: [:assoc | #(passed failures errors) includes: assoc key]
	thenCollect: [:assoc | assoc key -> (assoc value collect: [:selector |
		testClass selector: selector])]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})