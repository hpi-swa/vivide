definitions
def5c81b0a99ca84d4fbf64ec5c3d25c09f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'5c81b0a9-9ca8-4d4f-bf64-ec5c3d25c09f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]')})