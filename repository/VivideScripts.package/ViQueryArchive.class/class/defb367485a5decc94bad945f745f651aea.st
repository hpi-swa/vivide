definitions
defb367485a5decc94bad945f745f651aea
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'b367485a-5dec-c94b-ad94-5f745f651aea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]] value: in)]')
})