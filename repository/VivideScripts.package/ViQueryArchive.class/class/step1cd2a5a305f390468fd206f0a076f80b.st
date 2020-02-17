steps
step1cd2a5a305f390468fd206f0a076f80b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'09f67679-a2a5-0a4c-adf7-916d7a591772').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'09f67679-a2a5-0a4c-adf7-916d7a591772').
(#iconCode -> 'nil').
(#id -> #'1cd2a5a3-05f3-9046-8fd2-06f0a076f80b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'0166bc3d-c272-b14b-97b8-2735b475543c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2800)
}))
})