as yet unclassified
removedMorph: aMorph

	aMorph isPane ifTrue: [
		self removePane: aMorph].
	^ super removedMorph: aMorph.