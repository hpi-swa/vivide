steps
step8541e0243a147d4a9ac55c521a7c4f27
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nil)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nil)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nil)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'399a97f5-613f-be4e-a73c-ac19a0a147e6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 10:44:12 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nil)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nil)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nil)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'399a97f5-613f-be4e-a73c-ac19a0a147e6').
(#iconCode -> 'nil').
(#id -> #'8541e024-3a14-7d4a-9ac5-5c521a7c4f27').
(#isProperty -> false).
(#label -> 'Outline (w/ LOC categories)').
(#next -> #'f128659b-7f02-364d-afc1-143f418bf135').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ClassDescription).
(#outputKind -> CompiledMethod).
(#priority -> 5140).
(#view -> ViTreeViewExtended)
}))
})