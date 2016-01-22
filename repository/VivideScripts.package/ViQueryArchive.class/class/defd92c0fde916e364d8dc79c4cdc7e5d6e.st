definitions
defd92c0fde916e364d8dc79c4cdc7e5d6e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:object |
	"Inspector >> fieldList, selection"
	{#self -> object.
	#'all inst vars' -> (object longPrintStringLimitedTo: 20000).},
	(object class allInstVarNames withIndexCollect: [:nm :idx |
		idx <= object class instSize
			ifTrue: [nm -> (object instVarAt: idx)] 
			ifFalse: [ | basicIndex |
				basicIndex := idx - object class instSize.
				(object basicSize <= (100 + 10) or: [basicIndex <= 100])
					ifTrue: [nm -> (object basicAt: basicIndex)]
					ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]).
(#class -> ViQueryMapDefinition).
(#id -> #'d92c0fde-916e-364d-8dc7-9c4cdc7e5d6e').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Association).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:12:18 am')})).
(#sourceCode -> '[:object |
	"Inspector >> fieldList, selection"
	{#self -> object.
	#''all inst vars'' -> (object longPrintStringLimitedTo: 20000).},
	(object class allInstVarNames withIndexCollect: [:nm :idx |
		idx <= object class instSize
			ifTrue: [nm -> (object instVarAt: idx)] 
			ifFalse: [ | basicIndex |
				basicIndex := idx - object class instSize.
				(object basicSize <= (100 + 10) or: [basicIndex <= 100])
					ifTrue: [nm -> (object basicAt: basicIndex)]
					ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})