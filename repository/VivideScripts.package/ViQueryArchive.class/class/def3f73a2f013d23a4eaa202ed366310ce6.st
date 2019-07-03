definitions
def3f73a2f013d23a4eaa202ed366310ce6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | {
	method methodClass withAllSuperclasses reversed,
	(method methodClass allSubclasses sortBy: [:a :b | a name <= b name]).
	method selector.
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'3f73a2f0-13d2-3a4e-aa20-2ed366310ce6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 1:57:55 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | {
	method methodClass withAllSuperclasses reversed,
	(method methodClass allSubclasses sortBy: [:a :b | a name <= b name]).
	method selector.
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})