definitions
def23a2da502ce08d4b9729819606ba7840
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:refs | refs reject: [:ref | ref classSymbol == #ViQueryArchive]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'23a2da50-2ce0-8d4b-9729-819606ba7840').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:19:15 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:refs | refs reject: [:ref | ref classSymbol == #ViQueryArchive]] value: in)]')
})