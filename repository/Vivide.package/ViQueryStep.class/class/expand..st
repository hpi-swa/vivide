as yet unclassified
expand: aQuery

	^ (aQuery steps
		select: [:step | step isReferenceStep]
		thenCollect: [:step | step reference])
		reject: [:step | step == #defaultProperties asScript]