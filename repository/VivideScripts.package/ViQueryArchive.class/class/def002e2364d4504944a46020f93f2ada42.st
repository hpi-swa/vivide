definitions
def002e2364d4504944a46020f93f2ada42
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'002e2364-d450-4944-a460-20f93f2ada42').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:16:23 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:author | (Array streamContents: [:strm | SystemNavigation default allBehaviorsDo: [:b | (b methodDict values anySatisfy: [:m |
	m timeStamp beginsWith: author]) ifTrue: [strm nextPut: b theNonMetaClass]]]) asSet asOrderedCollection sorted: [:c1 :c2 | c1 name <= c2 name]]]
		value: in) do: [:result | out addAll: result asList]]')
})