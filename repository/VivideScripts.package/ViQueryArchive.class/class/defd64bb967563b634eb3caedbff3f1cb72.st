definitions
defd64bb967563b634eb3caedbff3f1cb72
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:selectors | SystemNavigation allUnSentMessagesIn: selectors] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'d64bb967-563b-634e-b3ca-edbff3f1cb72').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:12:18 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:selectors | SystemNavigation allUnSentMessagesIn: selectors] value: in)]')})