steps
step2c058a47d6e2a34fb699cb3781ed55cb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b0e50e7b-88bf-4c4f-aa1b-9366396f47d6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:55:19 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b0e50e7b-88bf-4c4f-aa1b-9366396f47d6').
(#iconCode -> 'nil').
(#id -> #'2c058a47-d6e2-a34f-b699-cb3781ed55cb').
(#isProperty -> false).
(#label -> 'Outline').
(#next -> #'c7e12f64-1638-ba43-92a5-5110b39063f2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MethodReference).
(#priority -> 3760).
(#view -> ViTreeViewExtended)
}))
})