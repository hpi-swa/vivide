steps
stepdd56b3e99e71b44e9a605319116f9cdd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding
		ifTrue: [object value isBehavior
			ifTrue: ['** inheritance  **']
			ifFalse: ['** variables **']]
		ifFalse: [object isBehavior
			ifTrue: ['** traits **']
			ifFalse: [object methodClass organization categoryOfElement: object selector]].
	object
	
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'8082cd62-4852-1c49-8e16-23b3ddd626bf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:43:48 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding
		ifTrue: [object value isBehavior
			ifTrue: [''** inheritance  **'']
			ifFalse: [''** variables **'']]
		ifFalse: [object isBehavior
			ifTrue: [''** traits **'']
			ifFalse: [object methodClass organization categoryOfElement: object selector]].
	object
	
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8082cd62-4852-1c49-8e16-23b3ddd626bf').
(#iconCode -> 'nil').
(#id -> #'dd56b3e9-9e71-b44e-9a60-5319116f9cdd').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#groups)).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:43:48 pm')
}))
})