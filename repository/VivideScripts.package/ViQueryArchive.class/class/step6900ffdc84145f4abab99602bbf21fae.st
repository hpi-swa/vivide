steps
step6900ffdc84145f4abab99602bbf21fae
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'d414bc8a-2daa-1a4e-bf6a-3c97908e3939').
(#iconCode -> 'nil').
(#id -> #'6900ffdc-8414-5f4a-bab9-9602bbf21fae').
(#isProperty -> false).
(#label -> nil).
(#next -> #'a7590d1b-e0ee-6340-a3d4-76e67ae30cfa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:31:24 pm').
(#priority -> 5680)
}))
})