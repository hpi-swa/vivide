definitions
def78f345f7529f5547b19ff5235365bce2
	<definition>

	^ ((Dictionary new) add: (#class->ViQuerySnippetDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 May 2014 7:12:55 pm'); yourself)); add: (#id->#'78f345f7-529f-5547-b19f-f5235365bce2'); add: (#inputKind->PackageInfo); add: (#block->nil); add: (#sourceCode->'self systemCategories do: [:cat | (SystemOrganization listAtCategoryNamed: cat) ifEmpty: [SystemOrganization removeCategory: cat]]'); add: (#receiverIsCollection->false); yourself)