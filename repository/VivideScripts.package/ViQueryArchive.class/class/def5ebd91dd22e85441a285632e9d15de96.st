definitions
def5ebd91dd22e85441a285632e9d15de96
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:ref | ref category = 'as yet unclassified' or: [ref category = 'nil']]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5ebd91dd-22e8-5441-a285-632e9d15de96').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:ref | ref category = ''as yet unclassified'' or: [ref category = ''nil'']]] value: in)]')
})