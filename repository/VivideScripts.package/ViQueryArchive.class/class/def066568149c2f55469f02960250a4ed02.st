definitions
def066568149c2f55469f02960250a4ed02
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
(#id -> #'06656814-9c2f-5546-9f02-960250a4ed02').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'8c63945a-c92d-404c-ae87-63a80050d688').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:36:46 pm')})).
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