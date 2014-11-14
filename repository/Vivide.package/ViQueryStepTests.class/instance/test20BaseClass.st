tests
test20BaseClass
	"Which kind of input objects are appropriate for a query step?"
	
	| sameType sameType2 changedType changedType2 changedType3 |
	sameType := [:obj | obj] asScript.
	sameType
		setProperty: #inputKind toValue: Object;
		setProperty: #outputKind toValue: Object.
	sameType2 := [:m | m submorphs] asScript.
	sameType2
		setProperty: #inputKind toValue: Morph;
		setProperty: #outputKind toValue: Morph.
	changedType := [:m | m color] asScript.
	changedType
		setProperty: #inputKind toValue: Morph;
		setProperty: #outputKind toValue: Color.
	changedType2 := [:c | ActiveWorld submorphs select: [:m | m color = c]] asScript.
	changedType2
		setProperty: #inputKind toValue: Color;
		setProperty: #outputKind toValue: BorderedMorph.
	changedType3 := [:bm | bm splitters] asScript.
	changedType3
		setProperty: #inputKind toValue: BorderedMorph;
		setProperty: #outputKind toValue: ProportionalSplitterMorph.

	"Test specialization."
	sameType next: sameType2.
	self assert: sameType baseClass = Morph.
	sameType2 next: changedType.
	self assert: sameType baseClass = Morph.
		
	"Test type change"
	changedType next: changedType2.
	changedType2 next: changedType3.
	self assert: sameType baseClass = Morph.