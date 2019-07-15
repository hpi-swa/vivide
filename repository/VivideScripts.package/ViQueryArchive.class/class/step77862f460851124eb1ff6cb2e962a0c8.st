steps
step77862f460851124eb1ff6cb2e962a0c8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ViFlagComment newListFromReference: ref]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'f91bbebd-046e-b248-9d3a-2d57d8f07c27').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:34:06 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ViFlagComment newListFromReference: ref]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f91bbebd-046e-b248-9d3a-2d57d8f07c27').
(#iconCode -> 'ViIcons blueFlagIcon').
(#id -> #'77862f46-0851-124e-b1ff-6cb2e962a0c8').
(#isProperty -> false).
(#label -> 'Flags').
(#next -> #'fd3c0b79-142a-ee4e-9f27-4da12eba946f').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:34:06 pm').
(#inputKind -> MethodReference).
(#outputKind -> ViFlagComment).
(#priority -> 3300).
(#view -> ViTreeViewExtended)
}))
})