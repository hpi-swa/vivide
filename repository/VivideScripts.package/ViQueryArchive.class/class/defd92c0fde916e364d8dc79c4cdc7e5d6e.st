definitions
defd92c0fde916e364d8dc79c4cdc7e5d6e
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 10:12:18 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Association); add: (#id->#'d92c0fde-916e-364d-8dc7-9c4cdc7e5d6e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:object |
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
					ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]'); add: (#mapType->#each); add: (#block->[:object |
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
					ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]); yourself)