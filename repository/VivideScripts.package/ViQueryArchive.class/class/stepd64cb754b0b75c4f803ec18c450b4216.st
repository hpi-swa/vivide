steps
stepd64cb754b0b75c4f803ec18c450b4216
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | 
	"MCRepository trunk cacheAllFileNamesDuring:" [
	([:all | all collect: [:o | (
	[:version | { 
	#text -> version info name.
	#icon -> ((version info ancestors allSatisfy: [:info | true "MCRepository trunk includesVersionNamed: info name"]) ifTrue: [] ifFalse: [UiSilkIcons bulletErrorIcon]) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result] ] value ]).
(#className -> #ViScriptDefinition).
(#id -> #'8edef633-69af-c04a-9f20-f9353f508aa8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:25:39.659086 am')
})).
(#sourceCode -> '[:in :out | 
	"MCRepository trunk cacheAllFileNamesDuring:" [
	([:all | all collect: [:o | (
	[:version | { 
	#text -> version info name.
	#icon -> ((version info ancestors allSatisfy: [:info | true "MCRepository trunk includesVersionNamed: info name"]) ifTrue: [] ifFalse: [UiSilkIcons bulletErrorIcon]) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result] ] value ]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8edef633-69af-c04a-9f20-f9353f508aa8').
(#iconCode -> 'nil').
(#id -> #'d64cb754-b0b7-5c4f-803e-c18c450b4216').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e294c160-6453-f54c-8304-0b6f60761804').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:25:39.659086 am')
}))
})