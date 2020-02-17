steps
stepc67f97849909ad419da597b166608217
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'df93144e-971c-ad43-9286-47e02daa2a96').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:59:33 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:change | 
	change value associations collect: [:item | 
		item value -> (MethodReference
			class: ((Smalltalk classNamed: change key) ifNil: [UndefinedObject])
			selector: item key)]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'df93144e-971c-ad43-9286-47e02daa2a96').
(#iconCode -> 'nil').
(#id -> #'c67f9784-9909-ad41-9da5-97b166608217').
(#isProperty -> false).
(#label -> nil).
(#next -> #'069180ba-532d-a840-b133-13495d451f74').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:59:33 pm').
(#priority -> 6400)
}))
})