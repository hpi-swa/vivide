*vivide-morphic
addAllMorphs: aCollection behind: anotherMorph
	^self privateAddAllMorphs: aCollection 
			atIndex: (submorphs indexOf: anotherMorph) + 1