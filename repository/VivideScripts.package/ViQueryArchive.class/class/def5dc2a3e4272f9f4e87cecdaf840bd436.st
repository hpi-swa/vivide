definitions
def5dc2a3e4272f9f4e87cecdaf840bd436
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls |
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'5dc2a3e4-272f-9f4e-87ce-cdaf840bd436').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:26:17 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls |
	(cls instVarNames collect: [:nm | cls -> nm]),
	(cls classVarNames collect: [:nm | cls class -> nm]),
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')})