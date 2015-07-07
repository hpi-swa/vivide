definitions
def376843ac1b555d4da85c383a3f1acd6b
	<definition>

	^ ((Dictionary new) add: (#inputKind->String); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 11:28:23 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Behavior); add: (#id->#'376843ac-1b55-5d4d-a85c-383a3f1acd6b'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]'); add: (#mapType->#each); add: (#block->[:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]); yourself)