steps
stepe67a3ef77a93634e86af5740774f3bb9
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
(#id -> #'1d5b5851-231c-fb4e-80df-f487c7e36540').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 12:09:54 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:reference | {
	PackageOrganizer default packageOfMethod: reference ifNone: [''(no package)''].
	reference
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1d5b5851-231c-fb4e-80df-f487c7e36540').
(#iconCode -> 'nil').
(#id -> #'e67a3ef7-7a93-634e-86af-5740774f3bb9').
(#isProperty -> false).
(#label -> nil).
(#next -> #'97b22eff-73d8-4746-b877-4dc3d77e1208').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 12:09:54 pm')
}))
})