definitions
def5af5db769b3d06438be1951341a93946
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:methods | methods inject: 0 into: [:sum :each | sum + each linesOfCode]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5af5db76-9b3d-0643-8be1-951341a93946').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:28:31 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:methods | methods inject: 0 into: [:sum :each | sum + each linesOfCode]] value: in)]')
})