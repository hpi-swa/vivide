definitions
defe50b9af142f05a44ba3dbe27b8cb0fdf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | 
	((cls withAllSuperclasses allButLast: 2) reversed collectWithIndex: [:c :i | i -> c]),
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nm)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nm)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nm)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'e50b9af1-42f0-5a44-ba3d-be27b8cb0fdf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:39:25 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | 
	((cls withAllSuperclasses allButLast: 2) reversed collectWithIndex: [:c :i | i -> c]),
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nm)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nm)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nm)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')})