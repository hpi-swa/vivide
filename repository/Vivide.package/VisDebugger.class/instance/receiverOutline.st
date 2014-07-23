as yet unclassified
receiverOutline

	^ {
	{#receiverOutline. self squeakListViewCreator} -> {
		[:context | context receiver] -> {ContextPart.Object}.
		[:object |
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
							ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]
				-> {Object.Association}.
		[:binding | #text -> binding key] -> {Association.Object}
	}
	}