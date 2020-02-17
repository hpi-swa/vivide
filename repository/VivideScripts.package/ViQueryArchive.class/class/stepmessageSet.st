steps
stepmessageSet
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | {PackageOrganizer default
		packageOfMethod: methodReference
		ifNone: ['(no package)']. methodReference} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c555f313-7d0c-fe4d-a6b8-9af8380d9800').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 November 2019 10:32:20.304893 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | {PackageOrganizer default
		packageOfMethod: methodReference
		ifNone: [''(no package)'']. methodReference} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c555f313-7d0c-fe4d-a6b8-9af8380d9800').
(#iconCode -> 'nil').
(#id -> #messageSet).
(#isProperty -> false).
(#label -> 'Message Set').
(#next -> #'e1cedd4a-b464-7243-ad42-6ec318525434').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 November 2019 10:32:20.304893 am').
(#inputKind -> MethodReference).
(#priority -> 210).
(#view -> ViTreePlainView)
}))
})