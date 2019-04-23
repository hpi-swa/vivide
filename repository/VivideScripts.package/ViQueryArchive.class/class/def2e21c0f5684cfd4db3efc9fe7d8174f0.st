definitions
def2e21c0f5684cfd4db3efc9fe7d8174f0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:behaviors | behaviors reject: [:b | behaviors includes: b superclass]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'2e21c0f5-684c-fd4d-b3ef-c9fe7d8174f0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:behaviors | behaviors reject: [:b | behaviors includes: b superclass]] value: in)]')})