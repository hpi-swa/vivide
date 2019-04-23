definitions
def421e61eaa76af04c98814c68845a862d
	<definition>

	^ (Dictionary newFrom: {
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
(#class -> ViScriptDefinition).
(#id -> #'421e61ea-a76a-f04c-9881-4c68845a862d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
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
		value: in) do: [:result | out addAll: result asList]]')})