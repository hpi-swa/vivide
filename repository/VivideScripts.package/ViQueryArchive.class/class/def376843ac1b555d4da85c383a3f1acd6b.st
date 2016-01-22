definitions
def376843ac1b555d4da85c383a3f1acd6b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]).
(#class -> ViQueryMapDefinition).
(#id -> #'376843ac-1b55-5d4d-a85c-383a3f1acd6b').
(#inputKind -> String).
(#mapType -> #each).
(#outputKind -> Behavior).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:28:23 am')})).
(#sourceCode -> '[:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})