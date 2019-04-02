definitions
defdbdd20d8783097438477d428bd4eaff5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls methodDict values, cls class methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'dbdd20d8-7830-9743-8477-d428bd4eaff5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 2:55:42 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls methodDict values, cls class methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')})