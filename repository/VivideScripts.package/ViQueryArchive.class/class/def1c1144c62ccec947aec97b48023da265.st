definitions
def1c1144c62ccec947aec97b48023da265
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1c1144c6-2cce-c947-aec9-7b48023da265').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:26:25 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]]
		value: in) do: [:result | out addAll: result asList]]')
})