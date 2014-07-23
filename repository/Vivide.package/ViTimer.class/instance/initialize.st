as yet unclassified
initialize

	super initialize.
	animation := AnimAnimation new
		finishBlock: [self onFinished].