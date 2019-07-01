as yet unclassified
withExtraWall: aMorph do: aBlock

	walls := walls copyWith: aMorph.
	aBlock value.
	walls := walls allButLast.