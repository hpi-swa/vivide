definitions
def31c04a24bcc1b24093ec34ce9302545c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'31c04a24-bcc1-b240-93ec-34ce9302545c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:25:03 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]')
})