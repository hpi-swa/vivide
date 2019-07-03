definitions
def753f301eb355874cbfcf680be25ffbaf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:class :sel | (class includesSelector: sel) ifTrue: [class >> sel]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'753f301e-b355-874c-bfcf-680be25ffbaf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:00:11 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:class :sel | (class includesSelector: sel) ifTrue: [class >> sel]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})