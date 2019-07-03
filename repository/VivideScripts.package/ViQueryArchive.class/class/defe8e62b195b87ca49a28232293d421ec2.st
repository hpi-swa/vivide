definitions
defe8e62b195b87ca49a28232293d421ec2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> (mail senderName) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'e8e62b19-5b87-ca49-a282-32293d421ec2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '22 March 2018 9:31:01 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> (mail senderName) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})