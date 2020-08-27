morphic - submorphs
removedMorph: aMorph

	aMorph isPane ifTrue: [
		self removePane: aMorph].
	^ super removedMorph: aMorph.