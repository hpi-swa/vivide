steps
stepoutline
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | 
	((cls withAllSuperclasses allButLast: 2) reversed collectWithIndex: [:c :i | i -> c]),
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nm)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nm)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nm asString)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'e50b9af1-42f0-5a44-ba3d-be27b8cb0fdf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:39:25 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | 
	((cls withAllSuperclasses allButLast: 2) reversed collectWithIndex: [:c :i | i -> c]),
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nm)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nm)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nm asString)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e50b9af1-42f0-5a44-ba3d-be27b8cb0fdf').
(#iconCode -> 'nil').
(#id -> #outline).
(#isProperty -> false).
(#label -> 'Outline').
(#next -> #'dd56b3e9-9e71-b44e-9a60-5319116f9cdd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:39:25 pm').
(#inputKind -> ClassDescription).
(#notifier -> ViSqueakSystemChangeNotifier).
(#orientation -> #default).
(#priority -> 40).
(#view -> ViTreeViewExtended)
}))
})