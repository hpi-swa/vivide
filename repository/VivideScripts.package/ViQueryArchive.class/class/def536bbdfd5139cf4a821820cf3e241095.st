definitions
def536bbdfd5139cf4a821820cf3e241095
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj | obj isBehavior ifTrue: [obj subclasses] ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'536bbdfd-5139-cf4a-8218-20cf3e241095').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:05:18 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj | obj isBehavior ifTrue: [obj subclasses] ifFalse: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')})