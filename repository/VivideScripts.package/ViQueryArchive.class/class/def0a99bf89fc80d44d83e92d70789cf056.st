definitions
def0a99bf89fc80d44d83e92d70789cf056
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0a99bf89-fc80-d44d-83e9-2d70789cf056').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:20:18 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass]]
		value: in) do: [:result | out addAll: result asList]]')})