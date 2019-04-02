definitions
def84116ddf3a24e74ea42c36c2a854dd77
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:assoc | assoc value asArray sorted: [:t1 :t2 |
	t1 class == t2 class
		ifTrue: [t1 selector <= t2 selector]
		ifFalse: [t1 class name <= t2 class name]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'84116ddf-3a24-e74e-a42c-36c2a854dd77').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:34:36 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:assoc | assoc value asArray sorted: [:t1 :t2 |
	t1 class == t2 class
		ifTrue: [t1 selector <= t2 selector]
		ifFalse: [t1 class name <= t2 class name]]]]
		value: in) do: [:result | out addAll: result asList]]')})