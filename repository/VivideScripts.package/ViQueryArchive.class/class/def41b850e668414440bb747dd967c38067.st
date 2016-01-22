definitions
def41b850e668414440bb747dd967c38067
	<definition>

	^ (Dictionary newFrom: {
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
(#class -> ViQueryStepDefinition).
(#id -> #'41b850e6-6841-4440-bb74-7dd967c38067').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'06656814-9c2f-5546-9f02-960250a4ed02').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')})).
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
			value: in) do: [:result | out add: result]]')})