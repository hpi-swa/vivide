definitions
def727d02f2e9b36e489af3ebfca8b21d12
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls | cls withAllSuperclasses]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'727d02f2-e9b3-6e48-9af3-ebfca8b21d12').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls | cls withAllSuperclasses]] value: in)]')})