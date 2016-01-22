definitions
def78f345f7529f5547b19ff5235365bce2
	<definition>

	^ (Dictionary newFrom: {
(#block -> nil).
(#class -> ViQuerySnippetDefinition).
(#id -> #'78f345f7-529f-5547-b19f-f5235365bce2').
(#inputKind -> PackageInfo).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 May 2014 7:12:55 pm')})).
(#receiverIsCollection -> false).
(#sourceCode -> 'self systemCategories do: [:cat | (SystemOrganization listAtCategoryNamed: cat) ifEmpty: [SystemOrganization removeCategory: cat]]')})