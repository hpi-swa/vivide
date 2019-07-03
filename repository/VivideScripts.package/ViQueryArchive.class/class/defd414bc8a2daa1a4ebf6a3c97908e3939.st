definitions
defd414bc8a2daa1a4ebf6a3c97908e3939
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:binding | 
	"See Browser >> messageList"
	(binding key = ClassOrganizer allCategory
		ifTrue: [binding value organization allMethodSelectors]
		ifFalse: [binding value organization listAtCategoryNamed: binding key])
		collect: [:selector | binding value >> selector]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d414bc8a-2daa-1a4e-bf6a-3c97908e3939').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:31:24 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:binding | 
	"See Browser >> messageList"
	(binding key = ClassOrganizer allCategory
		ifTrue: [binding value organization allMethodSelectors]
		ifFalse: [binding value organization listAtCategoryNamed: binding key])
		collect: [:selector | binding value >> selector]]]
		value: in) do: [:result | out addAll: result asList]]')
})