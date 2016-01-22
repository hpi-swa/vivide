definitions
defd38699e6bec1344c9a51ed500e0bf6dd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d38699e6-bec1-344c-9a51-ed500e0bf6dd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 9:44:59 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]')})