steps
steped5b130b8850004da2e4fa5157edc3b8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (object isText
		ifFalse: [ViLabelService doObject: object]).
	#icon -> (object isText
		ifFalse: [ViIconService doObject: object]).
	"#color -> (object isText
		ifTrue: [Color fromString: 'EEEEEE'])."
	#morph -> (object isText
		ifTrue: [object asMorph lock; margins: (0@5 corner: 0@2)]).
	#selectable -> object isText not.
	#tooltip -> [(object isText ifFalse: [ViObjectPreviewHandler doObject: object])]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'41b850e6-6841-4440-bb74-7dd967c38067').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (object isText
		ifFalse: [ViLabelService doObject: object]).
	#icon -> (object isText
		ifFalse: [ViIconService doObject: object]).
	"#color -> (object isText
		ifTrue: [Color fromString: ''EEEEEE''])."
	#morph -> (object isText
		ifTrue: [object asMorph lock; margins: (0@5 corner: 0@2)]).
	#selectable -> object isText not.
	#tooltip -> [(object isText ifFalse: [ViObjectPreviewHandler doObject: object])]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'41b850e6-6841-4440-bb74-7dd967c38067').
(#iconCode -> 'nil').
(#id -> #'ed5b130b-8850-004d-a2e4-fa5157edc3b8').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
}))
})