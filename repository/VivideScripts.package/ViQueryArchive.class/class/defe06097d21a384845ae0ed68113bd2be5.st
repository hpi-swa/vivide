definitions
defe06097d21a384845ae0ed68113bd2be5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]]).
(#className -> #ViScriptDefinition).
(#id -> #'e06097d2-1a38-4845-ae0e-d68113bd2be5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 October 2014 7:29:40 am')
})).
(#sourceCode -> '[:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]]')
})