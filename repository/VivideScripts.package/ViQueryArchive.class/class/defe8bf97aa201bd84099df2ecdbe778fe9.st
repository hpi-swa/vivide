definitions
defe8bf97aa201bd84099df2ecdbe778fe9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls | cls theMetaClass methodDict values]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'e8bf97aa-201b-d840-99df-2ecdbe778fe9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls | cls theMetaClass methodDict values]] value: in)]')
})