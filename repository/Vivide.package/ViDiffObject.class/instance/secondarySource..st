accessing
secondarySource: anObject

	anObject class ~~ ViDiffObject ifFalse: [Error signal: 'No Diffs!'].
	secondarySource := anObject