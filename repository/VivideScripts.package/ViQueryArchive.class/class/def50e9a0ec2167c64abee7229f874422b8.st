definitions
def50e9a0ec2167c64abee7229f874422b8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'50e9a0ec-2167-c64a-bee7-229f874422b8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:52:58 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]')})