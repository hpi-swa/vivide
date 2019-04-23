definitions
defdbc59c5040d2ff48a609d212aa403acf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'dbc59c50-40d2-ff48-a609-d212aa403acf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects] value: in)]')})