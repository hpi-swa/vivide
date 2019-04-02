definitions
def45edacf766676642b60b49826b7983fc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'45edacf7-6667-6642-b60b-49826b7983fc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:28:23 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:category | "See TestRunner >> findClassesForCategories: "
	((Smalltalk organization listAtCategoryNamed: category)
			collect: [:each | Smalltalk at: each])
			select: [:each | each includesBehavior: TestCase]]]
		value: in) do: [:result | out addAll: result asList]]')})