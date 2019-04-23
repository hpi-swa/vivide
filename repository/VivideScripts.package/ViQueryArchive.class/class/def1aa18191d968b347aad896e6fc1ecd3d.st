definitions
def1aa18191d968b347aad896e6fc1ecd3d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples asGroups] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'1aa18191-d968-b347-aad8-96e6fc1ecd3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.101235 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples asGroups] value: in)]')})