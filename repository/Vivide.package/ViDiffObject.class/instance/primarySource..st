accessing
primarySource: anObject

	anObject class ~~ ViDiffObject ifFalse: [Error signal: 'No Diffs!'].
	primarySource := anObject