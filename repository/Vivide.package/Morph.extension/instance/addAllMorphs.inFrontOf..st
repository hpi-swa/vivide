*vivide-morphic
addAllMorphs: aCollection inFrontOf: anotherMorph
	^self privateAddAllMorphs: aCollection
			atIndex: ((submorphs indexOf: anotherMorph) max: 1)