steps
step1e371f1464f0004c94cae667218e38e4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:morph | {#text -> morph class name. #icon -> (morph imageForm scaledToSize: 16@16)  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6c867afa-17d7-0f4a-836a-352ba9723208').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 March 2014 10:06:15 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:morph | {#text -> morph class name. #icon -> (morph imageForm scaledToSize: 16@16)  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6c867afa-17d7-0f4a-836a-352ba9723208').
(#iconCode -> 'nil').
(#id -> #'1e371f14-64f0-004c-94ca-e667218e38e4').
(#isProperty -> true).
(#label -> nil).
(#next -> #'91c9c5aa-8933-524c-908c-609b3a1fc00a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 4:25:10 pm').
(#priority -> 6250)
}))
})