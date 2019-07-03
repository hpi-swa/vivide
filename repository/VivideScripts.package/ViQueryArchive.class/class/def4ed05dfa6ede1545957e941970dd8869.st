definitions
def4ed05dfa6ede1545957e941970dd8869
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs select: [:step | step nextLabel notNil]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'4ed05dfa-6ede-1545-957e-941970dd8869').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:35:47 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs select: [:step | step nextLabel notNil]] value: in)]')
})