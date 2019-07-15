steps
stepee9363991409634c81ff0389658bb3ce
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  
	Time now print24, ' -- ',
	
	(obj isForm
		ifTrue: ['Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString]) ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'188219f8-61bc-014f-aba1-8a8ba9a79756').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:17:12 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  
	Time now print24, '' -- '',
	
	(obj isForm
		ifTrue: [''Picture successfully loaded.\ Width: {1}\ Height: {2}\ Depth: {3}'' withCRs format: {obj width.obj height.obj depth}]
		ifFalse: [obj asString]) ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'188219f8-61bc-014f-aba1-8a8ba9a79756').
(#iconCode -> 'nil').
(#id -> #'ee936399-1409-634c-81ff-0389658bb3ce').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:17:12 pm').
(#priority -> 4560)
}))
})