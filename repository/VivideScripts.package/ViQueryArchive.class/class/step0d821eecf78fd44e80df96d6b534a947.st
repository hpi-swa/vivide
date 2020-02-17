steps
step0d821eecf78fd44e80df96d6b534a947
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj |
	obj value isDictionary
		ifTrue: [obj value associations]
		ifFalse: [(((obj value isCollection
				and: [obj value isSequenceable])
				and: [obj value isCompiledMethod not])
				and: [obj value isString not])
			ifTrue: [obj value withIndexCollect: [:ea :idx | idx -> ea]]
			ifFalse: [
				"Fallback for all other objects."
				obj value class allInstVarNames collect: [:nm |
					nm -> (obj value instVarNamed: nm)]]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'421e61ea-a76a-f04c-9881-4c68845a862d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj |
	obj value isDictionary
		ifTrue: [obj value associations]
		ifFalse: [(((obj value isCollection
				and: [obj value isSequenceable])
				and: [obj value isCompiledMethod not])
				and: [obj value isString not])
			ifTrue: [obj value withIndexCollect: [:ea :idx | idx -> ea]]
			ifFalse: [
				"Fallback for all other objects."
				obj value class allInstVarNames collect: [:nm |
					nm -> (obj value instVarNamed: nm)]]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'421e61ea-a76a-f04c-9881-4c68845a862d').
(#iconCode -> 'nil').
(#id -> #'0d821eec-f78f-d44e-80df-96d6b534a947').
(#isProperty -> false).
(#label -> nil).
(#next -> #'f99cba1c-d720-4545-ac10-5a57f620226d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2460)
}))
})