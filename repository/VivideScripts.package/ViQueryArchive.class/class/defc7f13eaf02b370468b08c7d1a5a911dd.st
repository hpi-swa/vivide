definitions
defc7f13eaf02b370468b08c7d1a5a911dd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cls | 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nil)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nil)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nil)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]).
(#class -> ViQueryMapDefinition).
(#id -> #'c7f13eaf-02b3-7046-8b08-c7d1a5a911dd').
(#inputKind -> ClassDescription).
(#mapType -> #each).
(#outputKind -> CompiledMethod).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 10:44:12 am')})).
(#sourceCode -> '[:cls | 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls withAllSuperclasses gather: [:c | c traits]),
	"(cls instVarNames collect: [:nm | cls -> (nm -> ((cls detectSubInstanceSuchThat: [:obj | (obj instVarNamed: nm) notNil]) ifNotNil: [:inst | inst instVarNamed: nm]))]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> (cls instVarNamed: nm ))]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> (cls classPool at: nm))]),"
	(cls instVarNames collect: [:nm | cls -> (nm -> nil)]),
	(cls class instVarNames collect: [:nm | cls class -> (nm -> nil)]),
	(cls classVarNames collect: [:nm | cls class -> (nm -> nil)]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})