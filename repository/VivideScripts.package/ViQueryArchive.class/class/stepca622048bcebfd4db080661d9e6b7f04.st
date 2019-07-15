steps
stepca622048bcebfd4db080661d9e6b7f04
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'45edacf7-6667-6642-b60b-49826b7983fc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:28:23 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'45edacf7-6667-6642-b60b-49826b7983fc').
(#iconCode -> 'nil').
(#id -> #'ca622048-bceb-fd4d-b080-661d9e6b7f04').
(#isProperty -> false).
(#label -> 'Test classes').
(#next -> #'94740283-5bf2-514e-8eef-b18ce867137a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 2:54:36 pm').
(#inputKind -> String).
(#outputKind -> Behavior).
(#priority -> 5250).
(#view -> ViTreeViewExtended)
}))
})