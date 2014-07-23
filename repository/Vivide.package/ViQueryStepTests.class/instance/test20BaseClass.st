tests
test20BaseClass
	"Which kind of input objects are appropriate for a query step?"
	
	| sameType sameType2 changedType changedType2 changedType3 |
	sameType := ViQueryStep collect: '[:obj | obj]'.
	sameType definition inputKind: Object; outputKind: Object.
	sameType2 := ViQueryStep collect: '[:m | m submorphs]'.
	sameType2 definition inputKind: Morph; outputKind: Morph.
	changedType := ViQueryStep collect: '[:m | m color]'.
	changedType definition inputKind: Morph; outputKind: Color.
	changedType2 := ViQueryStep collect: '[:c | ActiveWorld submorphs select: [:m | m color = c]]'.
	changedType2 definition inputKind: Color; outputKind: BorderedMorph.
	changedType3 := ViQueryStep collect: '[:bm | bm splitters]'.
	changedType3 definition inputKind: BorderedMorph; outputKind: ProportionalSplitterMorph.

	"Test specialization."
	sameType next: sameType2.
	self assert: sameType baseClass = Morph.
	sameType2 next: changedType.
	self assert: sameType baseClass = Morph.
		
	"Test type change"
	changedType next: changedType2.
	changedType2 next: changedType3.
	self assert: sameType baseClass = Morph.