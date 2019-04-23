definitions
def038ed42c83a7fb4da82e3db71584ebc8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (object isText ifFalse: [ViLabelService doObject: object]).
	#icon -> (object isText ifFalse: [ViIconService doObject: object]).
	#morph -> (object isText ifTrue: [object asMorph lock; margins: (0 @ 5 corner: 0 @ 2)]). 
	#selectable -> object isText not. 
	#tooltip -> [object isText ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'038ed42c-83a7-fb4d-a82e-3db71584ebc8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 April 2019 3:12:48.400594 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (object isText ifFalse: [ViLabelService doObject: object]).
	#icon -> (object isText ifFalse: [ViIconService doObject: object]).
	#morph -> (object isText ifTrue: [object asMorph lock; margins: (0 @ 5 corner: 0 @ 2)]). 
	#selectable -> object isText not. 
	#tooltip -> [object isText ifFalse: [ViObjectPreviewHandler doObject: object]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})