definitions
def0277d50989317b41a15f78fa2c4b883d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:protocols | protocols gather: [:protocol | protocol methods]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'0277d509-8931-7b41-a15f-78fa2c4b883d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:protocols | protocols gather: [:protocol | protocol methods]] value: in)]')})