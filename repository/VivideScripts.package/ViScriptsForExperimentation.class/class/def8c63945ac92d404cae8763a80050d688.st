definitions
def8c63945ac92d404cae8763a80050d688
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'8c63945a-c92d-404c-ae87-63a80050d688'); add: (#block->[:in :out | ([:all | all collect: [:o | (
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
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
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
			value: in) do: [:result | out add: result]]'); yourself)