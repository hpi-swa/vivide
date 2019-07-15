steps
step46817f32e66b9342a3adabe14e9713c9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:author | Array streamContents: [:strm | SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
	(m timeStamp beginsWith: author) ifTrue: [strm nextPut: m methodReference]]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'40762867-f9fd-5e42-a5dd-a383f8b5bb95').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:50:08 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:author | Array streamContents: [:strm | SystemNavigation default allSelectorsAndMethodsDo: [:b :s :m |
	(m timeStamp beginsWith: author) ifTrue: [strm nextPut: m methodReference]]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'40762867-f9fd-5e42-a5dd-a383f8b5bb95').
(#iconCode -> 'nil').
(#id -> #'46817f32-e66b-9342-a3ad-abe14e9713c9').
(#isProperty -> false).
(#label -> 'Methods by Author').
(#next -> #'51d8a538-95c9-ce4b-9e21-ac726be7665b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:50:08 pm').
(#inputKind -> String).
(#outputKind -> MethodReference).
(#priority -> 4370).
(#view -> ViTreeViewExtended)
}))
})