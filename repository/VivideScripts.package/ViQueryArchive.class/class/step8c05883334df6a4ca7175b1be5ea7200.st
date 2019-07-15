steps
step8c05883334df6a4ca7175b1be5ea7200
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:reference | {
	PackageOrganizer default packageOfMethod: reference ifNone: ['(no package)'].
	reference
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'ecc7884c-a7d8-df46-85ee-57b6050211bc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:reference | {
	PackageOrganizer default packageOfMethod: reference ifNone: [''(no package)''].
	reference
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ecc7884c-a7d8-df46-85ee-57b6050211bc').
(#iconCode -> 'nil').
(#id -> #'8c058833-34df-6a4c-a717-5b1be5ea7200').
(#isProperty -> false).
(#label -> nil).
(#next -> #'bfc2203c-a7db-c84f-9574-1514d216b6e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:36:10 pm')
}))
})