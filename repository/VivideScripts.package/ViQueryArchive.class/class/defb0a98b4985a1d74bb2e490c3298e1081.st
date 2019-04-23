definitions
defb0a98b4985a1d74bb2e490c3298e1081
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs asSet asOrderedCollection] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'b0a98b49-85a1-d74b-b2e4-90c3298e1081').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs asSet asOrderedCollection] value: in)]')})