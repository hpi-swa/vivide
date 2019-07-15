steps
step809203fe0963ad4198c8acf61fac83bd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | methodReference actualClass executeMethod: methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'32976bf0-d679-4643-8dcf-adcd47fde71f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 5:57:32 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference actualClass executeMethod: methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'32976bf0-d679-4643-8dcf-adcd47fde71f').
(#iconCode -> 'nil').
(#id -> #'809203fe-0963-ad41-98c8-acf61fac83bd').
(#isProperty -> false).
(#label -> nil).
(#next -> #'49562206-5589-a546-a3dc-eec92fbc070e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 5:57:32 pm')
}))
})