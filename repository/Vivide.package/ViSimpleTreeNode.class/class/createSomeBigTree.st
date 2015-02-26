nil
createSomeBigTree

	| root builder |
root := ViSimpleTreeNode new.

builder := [:node :gen :depth |
	| deepEnough |
	deepEnough := depth <= (3 atRandom - 1).
	10 atRandom timesRepeat: [
		| child |
		child := ViSimpleTreeNode new.
		deepEnough not ifTrue: [
			gen value: child value: gen value: depth -1].
		node at: 1000 atRandom put: child]].

builder value: root value: builder value: 7.
^ root