definitions
defd3d9dbbc8a7ec845997801bfde2af1f5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:packages | packages gather: [:pkg | pkg systemCategories]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'d3d9dbbc-8a7e-c845-9978-01bfde2af1f5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:packages | packages gather: [:pkg | pkg systemCategories]] value: in)]')
})