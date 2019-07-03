definitions
def40762867f9fd5e42a5dda383f8b5bb95
	<definition>

	^ (Dictionary newFrom: {
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
})