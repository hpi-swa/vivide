steps
stepcf42cf45c23cc14981f21b262f58b7d3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:hit1 :hit2 | (hit1 at: '@score') asInteger >= (hit2 at: '@score') asInteger] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'9d669321-3928-7c41-a7f3-3d492fde2d92').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:01:22 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:hit1 :hit2 | (hit1 at: ''@score'') asInteger >= (hit2 at: ''@score'') asInteger] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9d669321-3928-7c41-a7f3-3d492fde2d92').
(#iconCode -> 'nil').
(#id -> #'cf42cf45-c23c-c149-81f2-1b262f58b7d3').
(#isProperty -> false).
(#label -> nil).
(#next -> #'3342a24e-e4ed-a64f-980a-bc8e7c4674e4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:01:22 am').
(#priority -> 6290)
}))
})