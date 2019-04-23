definitions
defb0e50e7b88bf4c4faa1b9366396f47d6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'b0e50e7b-88bf-4c4f-aa1b-9366396f47d6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:55:19 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | | cls |
	cls := ref actualClass theNonMetaClass. 
	(cls withAllSuperclasses allButLast: 2) reversed,
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')})