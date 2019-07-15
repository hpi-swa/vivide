steps
stepformattedScripts
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5c81b0a9-9ca8-4d4f-bf64-ec5c3d25c09f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:scripts | scripts
		sorted: [:s1 :s2 | s1 priority <= s2 priority]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5c81b0a9-9ca8-4d4f-bf64-ec5c3d25c09f').
(#iconCode -> 'nil').
(#id -> #formattedScripts).
(#isProperty -> false).
(#label -> 'Scripts').
(#next -> #'1af811b8-5914-fa4a-a308-6a17174c3d9c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm').
(#inputKind -> ViScriptStep).
(#outputKind -> ViScriptStep).
(#view -> ViTreeView).
(#yieldOn -> #(#activated))
}))
})